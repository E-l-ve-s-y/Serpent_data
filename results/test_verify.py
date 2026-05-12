#!/usr/bin/env python3
import sys
sys.path.insert(0, '.')

from script.analyze_results import analyze_case, collect_cases

print('Starting analysis...', flush=True)
cases = collect_cases('.')
print(f'Found {len(cases)} cases', flush=True)

if cases:
    c = cases[0]
    print(f'Processing {c}...', flush=True)
    result = analyze_case(c, '.')
    if result:
        print('CR (first 5 steps):', result['CR'][:5])
        print('FIR (first 5 steps):', result['FIR'][:5])
        print('SUCCESS - Using Serpent CONVERSION_RATIO')
    else:
        print('analyze_case returned None')
else:
    print('No cases found')