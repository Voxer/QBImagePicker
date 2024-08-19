//
//  QBAlbumsViewController.h
//  QBImagePicker
//
//  Created by Katsuma Tanaka on 2015/04/03.
//  Copyright (c) 2015 Katsuma Tanaka. All rights reserved.
//

#import <UIKit/UIKit.h>

@class QBImagePickerController;

@interface QBAlbumsViewController : UIViewController

@property (nonatomic, weak) QBImagePickerController *imagePickerController;
@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) IBOutlet UILabel *photoLibraryAccessTextLabel;
@property (strong, nonatomic) IBOutlet UIButton *managePhotoLibraryAccessButton;

@end
