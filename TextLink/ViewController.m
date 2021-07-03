//
//  ViewController.m
//  TextLink
//
//  Created by Kevin Scardina on 7/3/21.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextView *textView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *text = @"this is my <a href=\"https://apple.com\">link</a>";
    NSData *data = [text dataUsingEncoding: NSUTF8StringEncoding];
    NSError *error;
    NSDictionary *options = @{
        NSDocumentTypeDocumentAttribute:NSHTMLTextDocumentType
    };
    NSAttributedString *attributedText = [[NSAttributedString alloc] initWithData:data
                                                                          options:options
                                                               documentAttributes:nil
                                                                            error:&error];
    self.textView.attributedText = attributedText;
}


@end
