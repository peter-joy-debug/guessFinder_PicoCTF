import sys
import subprocess

def hide_file(image_file, file_to_hide, output_image, key):
    # Use the outguess command to hide the file in the image
    command = f"outguess -k {key} -d {file_to_hide} {image_file} {output_image}"
    subprocess.run(command.split())

def main(argv):
    # Parse the system arguments
    image_file = argv[1]
    file_to_hide = argv[2]
    output_image = argv[3]
    key = argv[4]

    # Call the hide_file function
    hide_file(image_file, file_to_hide, output_image, key)

if __name__ == "__main__":
    main(sys.argv)

