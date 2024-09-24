import Func "mo:base/Func";
import List "mo:base/List";

import Array "mo:base/Array";
import Random "mo:base/Random";
import Nat "mo:base/Nat";
import Text "mo:base/Text";
import Time "mo:base/Time";

actor {
  // List of ICP and Blockchain jokes
  let jokes : [Text] = [
    "Why did the ICP token go to therapy? It had too many identity issues!",
    "How does a blockchain stay cool? It has many fans!",
    "Why don't blockchains ever get lost? They always know their address!",
    "What do you call a cryptocurrency that's always in a bad mood? Bit-grumpy!",
    "Why did the ICP developer quit? He couldn't handle the canister pressure!",
    "How do blockchain developers communicate? They use proof-of-talk!",
    "Why was the smart contract feeling lonely? It had no friends to validate it!",
    "What's a blockchain's favorite dance? The block and roll!",
    "Why did the ICP go to school? To improve its smart-contract grades!",
    "How do you comfort a sad blockchain? You give it a block-hug!"
  ];

  // Function to get a random joke
  public func getRandomJoke() : async Text {
    let seed = Time.now();
    let randomIndex = Nat.abs(seed) % jokes.size();
    jokes[randomIndex]
  };
}
