with open('numeros.txt') as f1, open('numeros2.txt') as f2:
    lines1 = set(f1.read().splitlines())
    lines2 = set(f2.read().splitlines())

    # Check if last line of file1 has newline character
    if not lines1:
        with open(file1, 'a') as f1a:
            f1a.write('\n')
        lines1 = set(open(file1).read().splitlines())

    # Check if last line of file2 has newline character
    if not lines2:
        with open(file2, 'a') as f2a:
            f2a.write('\n')
        lines2 = set(open(file2).read().splitlines())

    duplicates = sorted(list(lines1 & lines2))
    uniques = sorted(list(lines1 ^ lines2))

with open('duplicates.txt', 'w') as f:
    f.write('\n'.join(duplicates))

with open('uniques.txt', 'w') as f:
    f.write('\n'.join(uniques))
