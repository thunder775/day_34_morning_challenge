// Challenge 1
// Minimum Removals to Make Two Strings Anagrams
// Create a function that returns the smallest number of letter removals so that
// two strings are anagrams of each other.
//  Examples
//  minRemovals("abcde", "cab") ➞ 2

int minRemoval(String str1, String str2) {
  var strList1 = List<String>.from(str1.split(''));
  var strList2 = List<String>.from(str2.split(''));
  for (int i = 0; i < str1.length; i++) {
    for (int j = 0; j < str2.length; j++) {
      if (str1[i] == str2[j]) {
        strList1.remove(str1[i]);
        strList2.remove(str2[j]);
        break;
      }
    }
  }
  return (strList1.length + strList2.length);
}

bool isAnagram(String str1, String str2) {
  return minRemoval(str1, str2) == 0;
}

// Challenge 2
// Farthest Hamming Anagrams
// The Hamming distance between two strings is the number of positions at which
// they differ. Hamming distances can only be calculated for strings of equal length.

/// String s1 = "eleven"
/// String s2 = "twelve"
/// They only have the third position (index 2) in common, giving them a Hamming
/// distance of 5.
/// As anagrams are of identical length, the Hamming distance between them can be
/// calculated.
// String s1 = "read"
// String s2 = "dear"
// These strings differ at the first and last positions, giving them a Hamming distance of 2.

/// Create a function that takes two strings, and returns:
// - true if they are anagrams of each other and their Hamming distance is equal to
//  their length (i.e. no letters in the same positions).
// - false if they aren't anagrams, or
// - Their Hamming distance if they are anagrams with >=1 letter at the same index.
dynamic hammingDistance(String str1, String str2) {
  int hammingDistance = 0;
  for (int i = 0; i < str1.length; i++) {
    if (str1[i] != str2[i]) {
      hammingDistance += 1;
    }
  }
  if (hammingDistance == str1.length && isAnagram(str1, str2)) {
    return true;
  }
  if (!isAnagram(str1, str2)) {
    return false;
  }
  if (hammingDistance != str1.length && isAnagram(str1, str2)) {
    return hammingDistance;
  }
}

main() {
//  print(minRemoval('balloon', 'balllooon'));
//  print(minRemoval('met', 'meet'));

  print(minRemoval('mood', 'doom'));
  print(isAnagram('mood', 'domo'));
  print(isAnagram('met', 'meet'));
  print(isAnagram('balloon', 'balllooon'));
//  print(hammingDistance('listen', 'silent'));
}
