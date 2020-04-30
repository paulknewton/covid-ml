import argparse
import sys
from pathlib import Path

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='Builds a Jekyll collection based on list of filenames read from stdin')
    parser.add_argument('--format', choices=["standard", "countries"], default="standard",
                        help='choose default YAML output or list of countries')
    args = parser.parse_args()

    countries = set()  # set to prevent duplicates

    for file in sys.stdin:
        file = Path(file.strip())
        filename_no_suffix = file.stem

        # title: Derive from the filename. Replace _ with spaces. Convert to CamelCase.
        print("- title: %s" % filename_no_suffix.replace("_", " ").title())

        # url: use the full path
        print("  url: %s" % file)

        # if list of countries then add a country name
        if args.format == "countries":
            country = filename_no_suffix[:filename_no_suffix.find("-") - 1:].replace("_", " ")

            # build up a set of unique countries
            countries.add(country)
            print("  country: %s" % country)

        # notes are not used for countries
        else:
            # notes: use the filename (no path, no suffix)
            notes_file = file.with_suffix(".md")
            print("  notes: %s" % notes_file)

            # create a 'notes' file (if missing)
            Path(notes_file).touch(exist_ok=True)

    if args.format == "countries":
        with open("_data/countries.yml", "w") as countries_yaml:
            for c in sorted(countries):
                countries_yaml.write("- country: %s\n" % c)



