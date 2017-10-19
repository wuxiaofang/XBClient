//
//  XBCreateSchoolViewController.m
//  XBClient
//
//  Created by yongche_w on 2017/10/18.
//  Copyright © 2017年 Map. All rights reserved.
//

#import "XBCreateSchoolViewController.h"
#import <MobileCoreServices/MobileCoreServices.h>
#import <AVFoundation/AVFoundation.h>
#import <MediaPlayer/MediaPlayer.h>
#import "XBLoginAndRegisterHandler.h"

@interface XBCreateSchoolViewController ()<UIImagePickerControllerDelegate, UINavigationControllerDelegate>

@property (nonatomic, strong) UIButton* schoolLogoButton;

@property (nonatomic, strong) UILabel* descLabel;

@property (nonatomic, strong) UITextField* schoolNameTextField;

@property (nonatomic, strong) UIView* textFieldContentView;

@property (nonatomic, strong) UIButton* submitButton;

@property (nonatomic, strong)  UIImagePickerController *imagePickerController;

@end

@implementation XBCreateSchoolViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self showBackButtonWithImage];
    
    [self setCustomLabelForNavTitle:@"添加学校信息"];
    
    self.schoolLogoButton = [UIButton createButtonWithTarget:self selector:@selector(schoolLogoButtonPress)];
    self.schoolLogoButton.frame = CGRectMake(0, 0, 80, 80);
    self.schoolLogoButton.layer.cornerRadius = 40;
    self.schoolLogoButton.layer.masksToBounds = YES;
    self.schoolLogoButton.layer.borderWidth = 0.5;
    self.schoolLogoButton.layer.borderColor = UIColorFromRGB(0xe5e5e5).CGColor;
    [self.schoolLogoButton setBackGroundColorForNormal:UIColorFromRGB(0xfffff)];
    
    [self.view addSubview:self.schoolLogoButton];
    
    self.descLabel = [[UILabel alloc] init];
    self.descLabel.textColor = UIColorFromRGB(0x333333);
    self.descLabel.font = [UIFont systemFontOfSize:15.0f];
    self.descLabel.textAlignment = NSTextAlignmentCenter;
    self.descLabel.text = @"添加学校LOGO";
    [self.descLabel sizeToFit];
    self.descLabel.frame = CGRectIntegral(self.descLabel.frame);
    [self.view addSubview:self.descLabel];
    
    self.textFieldContentView = [[UIView alloc] init];
    self.textFieldContentView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.textFieldContentView];
    
    {
        
        self.schoolNameTextField = [[UITextField alloc] init];
        self.schoolNameTextField.placeholder = @"请输入学校名称";
        self.schoolNameTextField.font = [UIFont systemFontOfSize:15];
        self.schoolNameTextField.backgroundColor = [UIColor clearColor];
        
        UIView* leftView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 46, 22)];
        self.schoolNameTextField.leftView = leftView;
        UIImageView* leftImageView = [[UIImageView alloc] init];
        leftImageView.image = [UIImage imageNamed:@"setschool_icon"];
        leftImageView.frame = CGRectMake(12, 0, 22, 22);
        [leftView addSubview:leftImageView];
        self.schoolNameTextField.leftViewMode = UITextFieldViewModeAlways;
        
        [self.textFieldContentView addSubview:self.schoolNameTextField];
    }
    
    self.submitButton = [UIButton createButtonWithTarget:self selector:@selector(submitButtonPress)];
    [self.submitButton setTitleForNormal:@"完成"];
    [self.submitButton setBackGroundColorForNormal:UIColorFromRGB(0x1abb75)];
    [self.submitButton setTitleColorForNormal:UIColorFromRGB(0xffffff)];
    self.submitButton.font = [UIFont systemFontOfSize:17];
    
    self.submitButton.layer.cornerRadius = 5;
    self.submitButton.layer.masksToBounds = YES;
    
    [self.view addSubview:self.submitButton];
    
    self.imagePickerController = [[UIImagePickerController alloc] init];
    self.imagePickerController.delegate = self;
    self.imagePickerController.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    self.imagePickerController.allowsEditing = YES;
    

    
}

- (void)viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];
    self.schoolLogoButton.yd_top = 40;
    self.schoolLogoButton.yd_centerX = self.view.yd_width / 2;
    
    self.descLabel.yd_top = self.schoolLogoButton.yd_bottom + 2;
    self.descLabel.yd_centerX = self.view.yd_width / 2;
    
    self.textFieldContentView.frame = CGRectMake(0, self.descLabel.yd_bottom + 30, self.view.yd_width, 48);
    self.schoolNameTextField.frame = CGRectMake(4, 0, self.textFieldContentView.yd_width - 8, 48);
    
    self.submitButton.frame = CGRectMake(16, self.textFieldContentView.yd_bottom + 32, self.view.yd_width - 32, 44);
    
    
}


- (void)schoolLogoButtonPress
{
    UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"添加图片" message:nil preferredStyle:UIAlertControllerStyleActionSheet];
    UIAlertAction* action1 = [UIAlertAction actionWithTitle:@"拍照" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [self selectImageFromCamera];
    }];
    UIAlertAction* action2 = [UIAlertAction actionWithTitle:@"从相册读取" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [self selectImageFromAlbum];
    }];
    
    UIAlertAction* action3 = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil];
    [alert addAction:action1];
    [alert addAction:action2];
    [alert addAction:action3];
    
    [self presentViewController:alert animated:YES completion:nil];
    
    
}


#pragma mark - 图片

- (void)selectImageFromCamera
{
    self.imagePickerController.sourceType = UIImagePickerControllerSourceTypeCamera;
    //录制视频时长，默认10s
    self.imagePickerController.videoMaximumDuration = 15;
    
    //相机类型（拍照、录像...）字符串需要做相应的类型转换
    self.imagePickerController.mediaTypes = @[(NSString *)kUTTypeImage];
    
    //视频上传质量
    //UIImagePickerControllerQualityTypeHigh高清
    //UIImagePickerControllerQualityTypeMedium中等质量
    //UIImagePickerControllerQualityTypeLow低质量
    //UIImagePickerControllerQualityType640x480
    self.imagePickerController.videoQuality = UIImagePickerControllerQualityTypeHigh;
    
    //设置摄像头模式（拍照，录制视频）为录像模式
    self.imagePickerController.cameraCaptureMode = UIImagePickerControllerCameraCaptureModeVideo;
    [self presentViewController:self.imagePickerController animated:YES completion:nil];
}

- (void)selectImageFromAlbum
{
    //NSLog(@"相册");
    self.imagePickerController.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    
    [self presentViewController:self.imagePickerController animated:YES completion:nil];
}

//适用获取所有媒体资源，只需判断资源类型
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info{
    NSString *mediaType=[info objectForKey:UIImagePickerControllerMediaType];
    //判断资源类型
    if ([mediaType isEqualToString:(NSString *)kUTTypeImage]){
        //如果是图片
        UIImage* image = info[UIImagePickerControllerEditedImage];
        [self.schoolLogoButton setBackGroundImageForNormal:image];
//        self.imageView.image = info[UIImagePickerControllerEditedImage];
//        //压缩图片
//        NSData *fileData = UIImageJPEGRepresentation(self.imageView.image, 1.0);
//        //保存图片至相册
//        UIImageWriteToSavedPhotosAlbum(self.imageView.image, self, @selector(image:didFinishSavingWithError:contextInfo:), NULL);
//        //上传图片
//        [self uploadImageWithData:fileData];
        
    }
    [self dismissViewControllerAnimated:YES completion:nil];
}


#pragma mark - 提交注册的学校
- (void)submitButtonPress
{
    
    [self.navigationController dismissViewControllerAnimated:YES completion:^{
        [[XBLoginAndRegisterHandler instance] loginFinishCallback];
    }];
}

@end
