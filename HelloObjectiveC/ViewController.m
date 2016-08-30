//
//  ViewController.m
//  HelloObjectiveC
//
//  Created by Chris Warrick on 2016-08-30.
//  Copyright © 2016 Chris Warrick. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (IBAction)textFieldHitEnter:(NSTextField *)sender {
    [self updateLabelWithFormat:sender.stringValue emoji:@"⌨️"];
}
- (IBAction)greetPressed:(NSButton *)sender {
    [self updateLabelWithFormat:_textField.stringValue emoji:@"🖱"];
}

- (BOOL)updateLabelWithFormat:(NSString*)text emoji:(NSString*)emoji {
    if ([[text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]] length] == 0) {
        [_label setStringValue:[NSString stringWithFormat:@"Hello! %@", emoji]];
        return NO;
    } else {
        [_label setStringValue:[NSString stringWithFormat:@"Hello, %@! %@", text, emoji]];
        return YES;
    }
}

- (void)showHelp:(id)sender {
    NSAlert *alert = [[NSAlert alloc] init];
    [alert setMessageText:@"Just type in a name and hit Return/Greet."];
    [alert setInformativeText:@"That’s all there is to know."];
    [alert setAlertStyle:NSInformationalAlertStyle];
    [alert addButtonWithTitle:@"OK"];
    [alert runModal];
}

- (void)viewDidLoad {
    [super viewDidLoad];

    [_label setStringValue:@"Hello!"];
    // Do any additional setup after loading the view.
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

@end
