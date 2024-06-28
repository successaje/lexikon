import TrieMap "mo:base/TrieMap";
import Text "mo:base/Text";

actor Lexi {

  type Entry = {
    definition: Text;
  };

  var WORD_STORE = TrieMap.TrieMap<Text, Entry>(Text.equal, Text.hash);

  // Initialize the dictionary with predefined words and definitions
    func initializeDictionary() {
        // Example entries, replace with generated entries
        WORD_STORE.put("example", { definition = "a representative form or pattern" });
        WORD_STORE.put("apple", { definition = "a fruit that is round and typically red, green, or yellow" });
        WORD_STORE.put("banana", { definition = "a long curved fruit which grows in clusters and has soft pulpy flesh and yellow skin when ripe" });
        // Add more words and definitions as needed
    };
  
  public query func greet(name : Text) : async Text {
    return "Hello, " # name # "!";
  };
};
