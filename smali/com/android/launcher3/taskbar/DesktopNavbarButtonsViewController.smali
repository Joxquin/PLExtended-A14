.class public final Lcom/android/launcher3/taskbar/DesktopNavbarButtonsViewController;
.super Lcom/android/launcher3/taskbar/NavbarButtonsViewController;
.source "SourceFile"


# instance fields
.field private final mAllAppsButton:Landroid/view/View;

.field private final mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

.field private mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

.field private final mNavButtonContainer:Landroid/view/ViewGroup;

.field private final mNavButtonsView:Landroid/widget/FrameLayout;

.field private final mStartContextualContainer:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Landroid/widget/FrameLayout;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;-><init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Landroid/widget/FrameLayout;)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/DesktopNavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/DesktopNavbarButtonsViewController;->mNavButtonsView:Landroid/widget/FrameLayout;

    const v0, 0x7f0a0156

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/launcher3/taskbar/DesktopNavbarButtonsViewController;->mNavButtonContainer:Landroid/view/ViewGroup;

    const v0, 0x7f0a032f

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/DesktopNavbarButtonsViewController;->mStartContextualContainer:Landroid/view/ViewGroup;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d013b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/taskbar/DesktopNavbarButtonsViewController;->mAllAppsButton:Landroid/view/View;

    new-instance p2, Lcom/android/launcher3/taskbar/a;

    invoke-direct {p2, p0}, Lcom/android/launcher3/taskbar/a;-><init>(Lcom/android/launcher3/taskbar/DesktopNavbarButtonsViewController;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic n(Lcom/android/launcher3/taskbar/DesktopNavbarButtonsViewController;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/DesktopNavbarButtonsViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarAllAppsController:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->toggle()V

    return-void
.end method


# virtual methods
.method public final init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V
    .locals 13

    iput-object p1, p0, Lcom/android/launcher3/taskbar/DesktopNavbarButtonsViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p1, p0, Lcom/android/launcher3/taskbar/DesktopNavbarButtonsViewController;->mNavButtonsView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/DesktopNavbarButtonsViewController;->mContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->taskbarHeight:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const v2, 0x7f0802bd

    const/16 v3, 0x20

    iget-object v4, p0, Lcom/android/launcher3/taskbar/DesktopNavbarButtonsViewController;->mNavButtonContainer:Landroid/view/ViewGroup;

    iget-object p1, p0, Lcom/android/launcher3/taskbar/DesktopNavbarButtonsViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v5, p1, Lcom/android/launcher3/taskbar/TaskbarControllers;->navButtonController:Lcom/android/launcher3/taskbar/TaskbarNavButtonController;

    const v6, 0x7f0a0299

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->addButton(IILandroid/view/ViewGroup;Lcom/android/launcher3/taskbar/TaskbarNavButtonController;I)Landroid/widget/ImageView;

    const v8, 0x7f0802bc

    const/16 v9, 0x40

    iget-object v10, p0, Lcom/android/launcher3/taskbar/DesktopNavbarButtonsViewController;->mNavButtonContainer:Landroid/view/ViewGroup;

    iget-object p1, p0, Lcom/android/launcher3/taskbar/DesktopNavbarButtonsViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v11, p1, Lcom/android/launcher3/taskbar/TaskbarControllers;->navButtonController:Lcom/android/launcher3/taskbar/TaskbarNavButtonController;

    const v12, 0x7f0a026e

    move-object v7, p0

    invoke-virtual/range {v7 .. v12}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->addButton(IILandroid/view/ViewGroup;Lcom/android/launcher3/taskbar/TaskbarNavButtonController;I)Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/android/launcher3/taskbar/DesktopNavbarButtonsViewController;->mStartContextualContainer:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/DesktopNavbarButtonsViewController;->mAllAppsButton:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 0

    return-void
.end method
