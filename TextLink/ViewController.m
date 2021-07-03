//
//  ViewController.m
//  TextLink
//
//  Created by Kevin Scardina on 7/3/21.
//

#import "ViewController.h"

@interface ViewController ()
// use the storyboard to layout the view and link this outlet property
@property (weak, nonatomic) IBOutlet UITextView *textView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // create a string with the HTML (including links) that you would like rendered
    // in your text view.
    NSString *text = @"<p style=\"font-family:verdana;font-size:18px;\">this is my <a href=\"https://apple.com\">link</a><br/><br/>You can do <b>bold text</b>, you can do <i>italics</i>, and even <u>underline stuff</u>.<br/><br/>You can even do images!<br/><img src=\"https://avatars.githubusercontent.com/u/8209667?v=4\"><br/>All good text<ul  style=\"font-family:verdana;font-size:12px;\"><li>needs</li><li>some</li><li>lists</li></ul><br/><h1  style=\"font-family:verdana;\">Headers</h1><h2  style=\"font-family:verdana;\">And</h2><h3  style=\"font-family:verdana;\">smaller</h3><h4  style=\"font-family:verdana;\">headers</h4><br/><p style=\"font-family:verdana;font-size:14px;\">And the (scroll down)<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/></p><p style=\"font-family:verdana;font-size:22px;\">scroll bars come for free!</p>";
    // convert the html string to data
    NSData *data = [text dataUsingEncoding: NSUTF8StringEncoding];
    // have an error to hold any rendering errors in
    NSError *error;
    // make sure to have the options set to html
    NSDictionary *options = @{
        NSDocumentTypeDocumentAttribute:NSHTMLTextDocumentType
    };
    // create an attributed test out of the html
    // - note: You must do this rendering of html to attributed string in the
    // main queue.
    NSAttributedString *attributedText = [[NSAttributedString alloc] initWithData:data
                                                                          options:options
                                                               documentAttributes:nil
                                                                            error:&error];
    // assign the attributed string to the text views attributed text property
    self.textView.attributedText = attributedText;
}


@end
