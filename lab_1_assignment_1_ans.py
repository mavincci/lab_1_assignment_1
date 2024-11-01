# Horizontal fragmentation demo

class HorizontalMintermGenerator:
    def __init__(self):
        self.predicates = []
        self.minterm_fragments = []
    
    def add_predicates(self, predicates):
        self.predicates = predicates
    
    def generate_minterm_combinations(self):
        n = len(self.predicates)
        
        for i in range(1, 2**n):
            combination = []
            for j in range(n):
                if i & (1 << j):
                    combination.append(self.predicates[j])
                else:
                    combination.append(f"NOT({self.predicates[j]})")
            self.minterm_fragments.append(combination)
    
    def get_minterm_fragments(self):
        return self.minterm_fragments
    
    def print_minterm_fragments(self):
        for i, fragment in enumerate(self.minterm_fragments, 1):
            print(f"Minterm Fragment {i}: {' AND '.join(fragment)}")

# Example usage:
if __name__ == "__main__":
    # Example predicates
    sample_predicates = ["P1", "P3", "P4"]
    
    gen = HorizontalMintermGenerator()
    gen.add_predicates(sample_predicates)
    gen.generate_minterm_combinations()    
    gen.print_minterm_fragments()
