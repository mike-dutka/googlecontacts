//
//  GOContactsViewController.h
//  Created by Devin Ross on 9/16/15.
//
/*
 
 Google Contacts || https://github.com/devinross/googlecontacts
 
 Permission is hereby granted, free of charge, to any person
 obtaining a copy of this software and associated documentation
 files (the "Software"), to deal in the Software without
 restriction, including without limitation the rights to use,
 copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the
 Software is furnished to do so, subject to the following
 conditions:
 
 The above copyright notice and this permission notice shall be
 included in all copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
 EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
 OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
 NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
 HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
 WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
 OTHER DEALINGS IN THE SOFTWARE.
 
 */

@import UIKit;
@class GOContact;

@interface GOContactsViewController : UITableViewController

@property (nonatomic,strong) UISwitch *sortSwitch;
@property (nonatomic,strong) UITableViewCell *sortCell;
@property (nonatomic,strong) NSArray *contacts;
@property (nonatomic,assign) BOOL showSortCell;
@property (strong, nonatomic) UISearchController *searchController;
@property (nonatomic,strong) UIView *loadingIndicatorView;


- (GOContact*) contactAtIndexPath:(NSIndexPath*)indexPath;

@end