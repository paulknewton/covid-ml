import argparse
import os.path
import sys
from pathlib import Path

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='Builds a Jekyll collection based on list of filenames read from stdin')
    parser.add_argument('--format', choices=["standard", "countries"], default="standard",
                        help='choose default YAML output or list of countries')
    args = parser.parse_args()

    for file in sys.stdin:
        file = Path(file.strip())
        filename_no_suffix = os.path.basename(file.with_suffix(""))

        # title: Derive from the filename. Replace _ with spaces. Convert to CamelCase.
        print("- title: %s" % filename_no_suffix.replace("_", " ").title())

        # url: use the full path
        print("  url: %s" % file)

        # notes: use the filename (no path, no suffix)
        print("  notes: %s" % filename_no_suffix)

        # if list of countries then add a country name
        if args.format == "countries":
            print("  anchor: %s" % filename_no_suffix[filename_no_suffix.rfind("-") + 2:].replace("_", " "))
