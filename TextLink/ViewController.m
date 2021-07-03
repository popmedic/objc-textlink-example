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
    NSString *text = @"<p style=\"font-family:verdana;font-size:18px;\">this is my <a href=\"https://apple.com\">link</a><br/><br/>You can do <b>bold text</b>, you can do <i>italics</i>, and even <u>underline stuff</u>.<br/><br/>You can even do images!<br/><img src=\"https://avatars.githubusercontent.com/u/8209667?v=4\"><br/>All good text<ul  style=\"font-family:verdana;font-size:12px;\"><li>needs</li><li>some</li><li>lists</li></ul><br/><h1  style=\"font-family:verdana;\">Headers</h1><h2  style=\"font-family:verdana;\">And</h2><h3  style=\"font-family:verdana;\">smaller</h3><h4  style=\"font-family:verdana;\">headers</h4><br/><p style=\"font-family:verdana;font-size:14px;\">And the (scroll down)<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/></p><p style=\"font-family:verdana;font-size:22px;\">scroll bars come for free!</p>";
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
