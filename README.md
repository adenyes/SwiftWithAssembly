# SwiftWithAssembly
A note on calling assembly routines from Swift

Linking assembly routines to a Cocoa app written in Swift should be about the same as invoking C-code from a Cocoa app, as long as the assembly routine adopts C-calling convention.

What is Swift's calling convention? This seems to be a discussion about what it aspires to be:
https://github.com/apple/swift/blob/master/docs/CallingConvention.rst

At least in the case of no parameters and no return value, it turns out if you adopt the C calling convention, your assembly code can be called as Objective-C can from Swift, using a bridging header. Your assembly functions must save/restore rbx.

These notes will be extended as I add more integrations.
-AD
