.class public final Lcom/android/launcher3/InvariantDeviceProfile;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;


# instance fields
.field public allAppsBorderSpaces:[Landroid/graphics/PointF;

.field public allAppsCellSize:[Landroid/graphics/PointF;

.field public allAppsIconSize:[F

.field public allAppsIconTextSize:[F

.field public allAppsSpecsId:I

.field public allAppsSpecsTwoPanelId:I

.field public allAppsStyle:I

.field public borderSpaces:[Landroid/graphics/PointF;

.field public cellStyle:I

.field public dbFile:Ljava/lang/String;

.field public defaultLayoutId:I

.field public defaultWallpaperSize:Landroid/graphics/Point;

.field public demoModeLayoutId:I

.field public devicePaddingId:I

.field public deviceType:I

.field public fillResIconDpi:I

.field public folderSpecsId:I

.field public folderSpecsTwoPanelId:I

.field public folderStyle:I

.field public horizontalMargin:[F

.field public hotseatBarBottomSpace:[F

.field public hotseatColumnSpan:[I

.field public hotseatQsbSpace:[F

.field public hotseatSpecsId:I

.field public hotseatSpecsTwoPanelId:I

.field public iconBitmapSize:I

.field public iconSize:[F

.field public iconTextSize:[F

.field public inlineNavButtonsEndSpacing:I

.field public inlineQsb:[Z

.field protected isScalable:Z

.field private final mChangeListeners:Ljava/util/ArrayList;

.field public minCellSize:[Landroid/graphics/PointF;

.field public numAllAppsColumns:I

.field public numColumns:I

.field public numDatabaseAllAppsColumns:I

.field public numDatabaseHotseatIcons:I

.field public numFolderColumns:I

.field public numFolderRows:I

.field public numRows:I

.field public numSearchContainerColumns:I

.field public numShownHotseatIcons:I

.field public startAlignTaskbar:[Z

.field public supportedProfiles:Ljava/util/List;

.field public transientTaskbarIconSize:[F

.field public workspaceSpecsId:I

.field public workspaceSpecsTwoPanelId:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/launcher3/util/MainThreadInitializedObject;

    new-instance v1, Lcom/android/launcher3/w;

    invoke-direct {v1}, Lcom/android/launcher3/w;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;-><init>(Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->devicePaddingId:I

    .line 3
    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->workspaceSpecsId:I

    .line 4
    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->workspaceSpecsTwoPanelId:I

    .line 5
    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->allAppsSpecsId:I

    .line 6
    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->allAppsSpecsTwoPanelId:I

    .line 7
    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->folderSpecsId:I

    .line 8
    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->folderSpecsTwoPanelId:I

    .line 9
    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->hotseatSpecsId:I

    .line 10
    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->hotseatSpecsTwoPanelId:I

    const/4 v0, 0x4

    new-array v0, v0, [Z

    .line 11
    iput-object v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->inlineQsb:[Z

    .line 12
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->supportedProfiles:Ljava/util/List;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->mChangeListeners:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 15
    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->devicePaddingId:I

    .line 16
    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->workspaceSpecsId:I

    .line 17
    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->workspaceSpecsTwoPanelId:I

    .line 18
    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->allAppsSpecsId:I

    .line 19
    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->allAppsSpecsTwoPanelId:I

    .line 20
    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->folderSpecsId:I

    .line 21
    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->folderSpecsTwoPanelId:I

    .line 22
    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->hotseatSpecsId:I

    .line 23
    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->hotseatSpecsTwoPanelId:I

    const/4 v0, 0x4

    new-array v0, v0, [Z

    .line 24
    iput-object v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->inlineQsb:[Z

    .line 25
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->supportedProfiles:Ljava/util/List;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->mChangeListeners:Ljava/util/ArrayList;

    .line 27
    invoke-static {p1}, Lcom/android/launcher3/InvariantDeviceProfile;->getCurrentGridName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/InvariantDeviceProfile;->initGrid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 29
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    sget-object v0, Lcom/android/launcher3/LauncherPrefs;->Companion:Lcom/android/launcher3/LauncherPrefs$Companion;

    invoke-static {p1}, Lcom/android/launcher3/LauncherPrefs$Companion;->get(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;

    move-result-object v0

    .line 31
    sget-object v2, Lcom/android/launcher3/LauncherPrefs;->GRID_NAME:Lcom/android/launcher3/ConstantItem;

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/LauncherPrefs;->put(Lcom/android/launcher3/ConstantItem;Ljava/lang/Object;)V

    .line 32
    :cond_0
    sget-object v0, Lcom/android/launcher3/util/LockedUserState;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-static {p1}, Lcom/android/launcher3/util/LockedUserState$Companion;->get(Landroid/content/Context;)Lcom/android/launcher3/util/LockedUserState;

    move-result-object v0

    .line 33
    new-instance v1, Lcom/android/launcher3/D;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1, p0}, Lcom/android/launcher3/D;-><init>(ILandroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LockedUserState;->runOnUserUnlocked(Ljava/lang/Runnable;)V

    .line 34
    sget-object v0, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/util/DisplayController;

    new-instance v0, Lcom/android/launcher3/F;

    invoke-direct {v0, p0}, Lcom/android/launcher3/F;-><init>(Lcom/android/launcher3/InvariantDeviceProfile;)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/DisplayController;->setPriorityListener(Lcom/android/launcher3/F;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;)V
    .locals 10

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 52
    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->devicePaddingId:I

    .line 53
    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->workspaceSpecsId:I

    .line 54
    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->workspaceSpecsTwoPanelId:I

    .line 55
    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->allAppsSpecsId:I

    .line 56
    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->allAppsSpecsTwoPanelId:I

    .line 57
    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->folderSpecsId:I

    .line 58
    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->folderSpecsTwoPanelId:I

    .line 59
    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->hotseatSpecsId:I

    .line 60
    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->hotseatSpecsTwoPanelId:I

    const/4 v0, 0x4

    new-array v1, v0, [Z

    .line 61
    iput-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile;->inlineQsb:[Z

    .line 62
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile;->supportedProfiles:Ljava/util/List;

    .line 63
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile;->mChangeListeners:Ljava/util/ArrayList;

    .line 64
    sget-object v1, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    .line 65
    invoke-static {p1}, Lcom/android/launcher3/InvariantDeviceProfile;->getCurrentGridName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 66
    sget-object v2, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v2, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v2}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v2

    .line 67
    invoke-static {v2}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceType(Lcom/android/launcher3/util/DisplayController$Info;)I

    move-result v3

    const/4 v4, 0x0

    .line 68
    invoke-static {p1, v1, v3, v4}, Lcom/android/launcher3/InvariantDeviceProfile;->getPredefinedDeviceProfiles(Landroid/content/Context;Ljava/lang/String;IZ)Ljava/util/ArrayList;

    move-result-object v5

    .line 69
    invoke-static {v2, v5, v3}, Lcom/android/launcher3/InvariantDeviceProfile;->invDistWeightedInterpolate(Lcom/android/launcher3/util/DisplayController$Info;Ljava/util/ArrayList;I)Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;

    move-result-object v2

    .line 70
    invoke-virtual {p1, p2}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object p2

    .line 71
    new-instance v3, Lcom/android/launcher3/util/DisplayController$Info;

    .line 72
    new-instance v5, Lcom/android/launcher3/util/window/WindowManagerProxy;

    invoke-direct {v5}, Lcom/android/launcher3/util/window/WindowManagerProxy;-><init>()V

    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    invoke-direct {v3, p2, v5, v6}, Lcom/android/launcher3/util/DisplayController$Info;-><init>(Landroid/content/Context;Lcom/android/launcher3/util/window/WindowManagerProxy;Ljava/util/Map;)V

    .line 73
    invoke-static {v3}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceType(Lcom/android/launcher3/util/DisplayController$Info;)I

    move-result p2

    .line 74
    invoke-static {p1, v1, p2, v4}, Lcom/android/launcher3/InvariantDeviceProfile;->getPredefinedDeviceProfiles(Landroid/content/Context;Ljava/lang/String;IZ)Ljava/util/ArrayList;

    move-result-object v1

    .line 75
    invoke-static {v3, v1, p2}, Lcom/android/launcher3/InvariantDeviceProfile;->invDistWeightedInterpolate(Lcom/android/launcher3/util/DisplayController$Info;Ljava/util/ArrayList;I)Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;

    move-result-object v1

    .line 76
    new-instance v5, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;

    iget-object v6, v2, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->grid:Lcom/android/launcher3/InvariantDeviceProfile$GridOption;

    invoke-direct {v5, v6}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;-><init>(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)V

    .line 77
    invoke-static {v5, v1}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->q(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)V

    .line 78
    invoke-static {v5}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->j(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[F

    move-result-object v6

    invoke-static {v2}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->j(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[F

    move-result-object v7

    aget v7, v7, v4

    aput v7, v6, v4

    const/4 v6, 0x1

    :goto_0
    if-ge v6, v0, :cond_0

    .line 79
    invoke-static {v5}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->j(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[F

    move-result-object v7

    invoke-static {v2}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->j(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[F

    move-result-object v8

    aget v8, v8, v6

    invoke-static {v1}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->j(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[F

    move-result-object v9

    aget v9, v9, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    aput v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 80
    :cond_0
    invoke-static {v2}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->k(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[Landroid/graphics/PointF;

    move-result-object v1

    invoke-static {v5}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->k(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[Landroid/graphics/PointF;

    move-result-object v6

    invoke-static {v1, v4, v6, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 81
    invoke-static {v2}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->e(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[Landroid/graphics/PointF;

    move-result-object v1

    invoke-static {v5}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->e(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[Landroid/graphics/PointF;

    move-result-object v2

    invoke-static {v1, v4, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 82
    invoke-direct {p0, p1, v3, v5, p2}, Lcom/android/launcher3/InvariantDeviceProfile;->initGrid(Landroid/content/Context;Lcom/android/launcher3/util/DisplayController$Info;Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 36
    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->devicePaddingId:I

    .line 37
    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->workspaceSpecsId:I

    .line 38
    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->workspaceSpecsTwoPanelId:I

    .line 39
    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->allAppsSpecsId:I

    .line 40
    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->allAppsSpecsTwoPanelId:I

    .line 41
    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->folderSpecsId:I

    .line 42
    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->folderSpecsTwoPanelId:I

    .line 43
    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->hotseatSpecsId:I

    .line 44
    iput v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->hotseatSpecsTwoPanelId:I

    const/4 v0, 0x4

    new-array v0, v0, [Z

    .line 45
    iput-object v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->inlineQsb:[Z

    .line 46
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->supportedProfiles:Ljava/util/List;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->mChangeListeners:Ljava/util/ArrayList;

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/InvariantDeviceProfile;->initGrid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 49
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 50
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unknown grid name"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic a(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;
    .locals 1

    new-instance v0, Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-direct {v0, p0}, Lcom/android/launcher3/InvariantDeviceProfile;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static synthetic b(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/launcher3/InvariantDeviceProfile;->onConfigChanged(Landroid/content/Context;)V

    return-void
.end method

.method public static c(FFLcom/android/launcher3/InvariantDeviceProfile$DisplayOption;Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)I
    .locals 4

    invoke-static {p2}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->m(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)F

    move-result v0

    invoke-static {p2}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->l(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)F

    move-result p2

    sub-float/2addr v0, p0

    float-to-double v0, v0

    sub-float/2addr p2, p1

    float-to-double v2, p2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float p2, v0

    invoke-static {p3}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->m(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)F

    move-result v0

    invoke-static {p3}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->l(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)F

    move-result p3

    sub-float/2addr v0, p0

    float-to-double v0, v0

    sub-float/2addr p3, p1

    float-to-double p0, p3

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p0

    double-to-float p0, p0

    invoke-static {p2, p0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    return p0
.end method

.method public static synthetic d(Lcom/android/launcher3/InvariantDeviceProfile;Landroid/content/Context;I)V
    .locals 0

    and-int/lit8 p2, p2, 0x1c

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/launcher3/InvariantDeviceProfile;->onConfigChanged(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    return-void
.end method

.method public static getCurrentGridName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/launcher3/LauncherPrefs;->Companion:Lcom/android/launcher3/LauncherPrefs$Companion;

    invoke-static {p0}, Lcom/android/launcher3/LauncherPrefs$Companion;->get(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/LauncherPrefs;->GRID_NAME:Lcom/android/launcher3/ConstantItem;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherPrefs;->get(Lcom/android/launcher3/ConstantItem;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getDefaultGridName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    new-instance v0, Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-direct {v0}, Lcom/android/launcher3/InvariantDeviceProfile;-><init>()V

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/InvariantDeviceProfile;->initGrid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getDeviceType(Lcom/android/launcher3/util/DisplayController$Info;)I
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/util/DisplayController$Info;->supportedBounds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/B;

    invoke-direct {v1, p0}, Lcom/android/launcher3/B;-><init>(Lcom/android/launcher3/util/DisplayController$Info;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p0

    new-instance v0, Lcom/android/launcher3/C;

    invoke-direct {v0}, Lcom/android/launcher3/C;-><init>()V

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Ljava/util/stream/IntStream;->reduce(ILjava/util/function/IntBinaryOperator;)I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    return v0

    :cond_1
    return v1
.end method

.method private static getPredefinedDeviceProfiles(Landroid/content/Context;Ljava/lang/String;IZ)Ljava/util/ArrayList;
    .locals 10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f160009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    :cond_0
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    if-le v5, v2, :cond_5

    :cond_1
    const/4 v5, 0x1

    if-eq v3, v5, :cond_5

    const/4 v6, 0x2

    if-ne v3, v6, :cond_0

    const-string v3, "grid-option"

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;

    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v7

    invoke-direct {v3, p0, v7}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {v3, p2}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->isEnabled(I)Z

    move-result v7

    if-nez v7, :cond_2

    if-eqz p3, :cond_0

    :cond_2
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v7

    :cond_3
    :goto_0
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v8

    if-ne v8, v4, :cond_4

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v9

    if-le v9, v7, :cond_0

    :cond_4
    if-eq v8, v5, :cond_0

    if-ne v8, v6, :cond_3

    const-string v8, "display-option"

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    new-instance v8, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;

    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v9

    invoke-direct {v8, v3, p0, v9}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;-><init>(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_5
    :try_start_2
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;

    iget-object v3, v2, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->grid:Lcom/android/launcher3/InvariantDeviceProfile$GridOption;

    iget-object v3, v3, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->name:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, v2, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->grid:Lcom/android/launcher3/InvariantDeviceProfile$GridOption;

    invoke-virtual {v3, p2}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_7

    if-eqz p3, :cond_6

    :cond_7
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;

    invoke-static {p2}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->f(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_a
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_b

    return-object p0

    :cond_b
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "No display option with canBeDefault=true"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    if-eqz v1, :cond_c

    :try_start_3
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_c
    :goto_3
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private initGrid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v0}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceType(Lcom/android/launcher3/util/DisplayController$Info;)I

    move-result v1

    .line 3
    invoke-static {p1}, Lcom/android/launcher3/provider/RestoreDbTask;->isPending(Landroid/content/Context;)Z

    move-result v2

    .line 4
    invoke-static {p1, p2, v1, v2}, Lcom/android/launcher3/InvariantDeviceProfile;->getPredefinedDeviceProfiles(Landroid/content/Context;Ljava/lang/String;IZ)Ljava/util/ArrayList;

    move-result-object p2

    .line 5
    invoke-static {v0, p2, v1}, Lcom/android/launcher3/InvariantDeviceProfile;->invDistWeightedInterpolate(Lcom/android/launcher3/util/DisplayController$Info;Ljava/util/ArrayList;I)Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;

    move-result-object p2

    .line 6
    invoke-direct {p0, p1, v0, p2, v1}, Lcom/android/launcher3/InvariantDeviceProfile;->initGrid(Landroid/content/Context;Lcom/android/launcher3/util/DisplayController$Info;Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;I)V

    .line 7
    iget-object p0, p2, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->grid:Lcom/android/launcher3/InvariantDeviceProfile$GridOption;

    iget-object p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->name:Ljava/lang/String;

    return-object p0
.end method

.method private initGrid(Landroid/content/Context;Lcom/android/launcher3/util/DisplayController$Info;Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;I)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p4

    .line 8
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    move-object/from16 v4, p3

    .line 9
    iget-object v5, v4, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->grid:Lcom/android/launcher3/InvariantDeviceProfile$GridOption;

    iget v6, v5, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numRows:I

    iput v6, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    .line 10
    iget v6, v5, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numColumns:I

    iput v6, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    .line 11
    iget v6, v5, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numSearchContainerColumns:I

    iput v6, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numSearchContainerColumns:I

    .line 12
    invoke-static {v5}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->c(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/launcher3/InvariantDeviceProfile;->dbFile:Ljava/lang/String;

    .line 13
    invoke-static {v5}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->d(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I

    move-result v6

    iput v6, v1, Lcom/android/launcher3/InvariantDeviceProfile;->defaultLayoutId:I

    .line 14
    invoke-static {v5}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->e(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I

    move-result v6

    iput v6, v1, Lcom/android/launcher3/InvariantDeviceProfile;->demoModeLayoutId:I

    .line 15
    invoke-static {v5}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->x(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I

    move-result v6

    iput v6, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderRows:I

    .line 16
    invoke-static {v5}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->w(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I

    move-result v6

    iput v6, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderColumns:I

    .line 17
    invoke-static {v5}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->g(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I

    move-result v6

    iput v6, v1, Lcom/android/launcher3/InvariantDeviceProfile;->folderStyle:I

    .line 18
    invoke-static {v5}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->b(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I

    move-result v6

    iput v6, v1, Lcom/android/launcher3/InvariantDeviceProfile;->cellStyle:I

    .line 19
    invoke-static {v5}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->k(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)Z

    move-result v6

    iput-boolean v6, v1, Lcom/android/launcher3/InvariantDeviceProfile;->isScalable:Z

    .line 20
    invoke-static {v5}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->f(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I

    move-result v6

    iput v6, v1, Lcom/android/launcher3/InvariantDeviceProfile;->devicePaddingId:I

    .line 21
    invoke-static {v5}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->r(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I

    move-result v6

    iput v6, v1, Lcom/android/launcher3/InvariantDeviceProfile;->workspaceSpecsId:I

    .line 22
    invoke-static {v5}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->s(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I

    move-result v6

    iput v6, v1, Lcom/android/launcher3/InvariantDeviceProfile;->workspaceSpecsTwoPanelId:I

    .line 23
    invoke-static {v5}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->l(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I

    move-result v6

    iput v6, v1, Lcom/android/launcher3/InvariantDeviceProfile;->allAppsSpecsId:I

    .line 24
    invoke-static {v5}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->m(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I

    move-result v6

    iput v6, v1, Lcom/android/launcher3/InvariantDeviceProfile;->allAppsSpecsTwoPanelId:I

    .line 25
    invoke-static {v5}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->n(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I

    move-result v6

    iput v6, v1, Lcom/android/launcher3/InvariantDeviceProfile;->folderSpecsId:I

    .line 26
    invoke-static {v5}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->o(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I

    move-result v6

    iput v6, v1, Lcom/android/launcher3/InvariantDeviceProfile;->folderSpecsTwoPanelId:I

    .line 27
    invoke-static {v5}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->p(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I

    move-result v6

    iput v6, v1, Lcom/android/launcher3/InvariantDeviceProfile;->hotseatSpecsId:I

    .line 28
    invoke-static {v5}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->q(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I

    move-result v6

    iput v6, v1, Lcom/android/launcher3/InvariantDeviceProfile;->hotseatSpecsTwoPanelId:I

    .line 29
    iput v3, v1, Lcom/android/launcher3/InvariantDeviceProfile;->deviceType:I

    .line 30
    invoke-static {v5}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->i(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I

    move-result v6

    iput v6, v1, Lcom/android/launcher3/InvariantDeviceProfile;->inlineNavButtonsEndSpacing:I

    .line 31
    invoke-static/range {p3 .. p3}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->j(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[F

    move-result-object v6

    iput-object v6, v1, Lcom/android/launcher3/InvariantDeviceProfile;->iconSize:[F

    const/4 v7, 0x0

    .line 32
    aget v6, v6, v7

    const/4 v8, 0x1

    move v9, v8

    .line 33
    :goto_0
    iget-object v10, v1, Lcom/android/launcher3/InvariantDeviceProfile;->iconSize:[F

    array-length v11, v10

    if-ge v9, v11, :cond_0

    .line 34
    aget v10, v10, v9

    invoke-static {v6, v10}, Ljava/lang/Math;->max(FF)F

    move-result v6

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 35
    :cond_0
    invoke-static {v6, v0}, Lcom/android/launcher3/testing/shared/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v6

    iput v6, v1, Lcom/android/launcher3/InvariantDeviceProfile;->iconBitmapSize:I

    const/4 v9, 0x7

    new-array v9, v9, [I

    .line 36
    fill-array-data v9, :array_0

    const/16 v10, 0x280

    const/4 v11, 0x6

    :goto_1
    const/high16 v12, 0x43200000    # 160.0f

    if-ltz v11, :cond_2

    .line 37
    aget v13, v9, v11

    int-to-float v14, v13

    const/high16 v15, 0x42400000    # 48.0f

    mul-float/2addr v14, v15

    div-float/2addr v14, v12

    int-to-float v12, v6

    cmpl-float v12, v14, v12

    if-ltz v12, :cond_1

    move v10, v13

    :cond_1
    add-int/lit8 v11, v11, -0x1

    goto :goto_1

    .line 38
    :cond_2
    iput v10, v1, Lcom/android/launcher3/InvariantDeviceProfile;->fillResIconDpi:I

    .line 39
    invoke-static/range {p3 .. p3}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->o(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[F

    move-result-object v6

    iput-object v6, v1, Lcom/android/launcher3/InvariantDeviceProfile;->iconTextSize:[F

    .line 40
    invoke-static/range {p3 .. p3}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->k(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[Landroid/graphics/PointF;

    move-result-object v6

    iput-object v6, v1, Lcom/android/launcher3/InvariantDeviceProfile;->minCellSize:[Landroid/graphics/PointF;

    .line 41
    invoke-static/range {p3 .. p3}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->e(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[Landroid/graphics/PointF;

    move-result-object v6

    iput-object v6, v1, Lcom/android/launcher3/InvariantDeviceProfile;->borderSpaces:[Landroid/graphics/PointF;

    .line 42
    invoke-static/range {p3 .. p3}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->g(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[F

    move-result-object v6

    iput-object v6, v1, Lcom/android/launcher3/InvariantDeviceProfile;->horizontalMargin:[F

    .line 43
    invoke-static {v5}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->y(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I

    move-result v6

    iput v6, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numShownHotseatIcons:I

    if-ne v3, v8, :cond_3

    .line 44
    invoke-static {v5}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->v(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I

    move-result v6

    goto :goto_2

    :cond_3
    invoke-static {v5}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->y(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I

    move-result v6

    :goto_2
    iput v6, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numDatabaseHotseatIcons:I

    .line 45
    invoke-static {v5}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->h(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)[I

    move-result-object v6

    iput-object v6, v1, Lcom/android/launcher3/InvariantDeviceProfile;->hotseatColumnSpan:[I

    .line 46
    invoke-static/range {p3 .. p3}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->h(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[F

    move-result-object v6

    iput-object v6, v1, Lcom/android/launcher3/InvariantDeviceProfile;->hotseatBarBottomSpace:[F

    .line 47
    invoke-static/range {p3 .. p3}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->i(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[F

    move-result-object v6

    iput-object v6, v1, Lcom/android/launcher3/InvariantDeviceProfile;->hotseatQsbSpace:[F

    .line 48
    invoke-static {v5}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->a(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I

    move-result v6

    iput v6, v1, Lcom/android/launcher3/InvariantDeviceProfile;->allAppsStyle:I

    .line 49
    invoke-static {v5}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->t(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I

    move-result v6

    iput v6, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numAllAppsColumns:I

    if-ne v3, v8, :cond_4

    .line 50
    invoke-static {v5}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->u(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I

    move-result v6

    goto :goto_3

    :cond_4
    invoke-static {v5}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->t(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I

    move-result v6

    :goto_3
    iput v6, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numDatabaseAllAppsColumns:I

    .line 51
    invoke-static/range {p3 .. p3}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->b(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[Landroid/graphics/PointF;

    move-result-object v6

    iput-object v6, v1, Lcom/android/launcher3/InvariantDeviceProfile;->allAppsCellSize:[Landroid/graphics/PointF;

    .line 52
    invoke-static/range {p3 .. p3}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->a(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[Landroid/graphics/PointF;

    move-result-object v6

    iput-object v6, v1, Lcom/android/launcher3/InvariantDeviceProfile;->allAppsBorderSpaces:[Landroid/graphics/PointF;

    .line 53
    invoke-static/range {p3 .. p3}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->c(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[F

    move-result-object v6

    iput-object v6, v1, Lcom/android/launcher3/InvariantDeviceProfile;->allAppsIconSize:[F

    .line 54
    invoke-static/range {p3 .. p3}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->d(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[F

    move-result-object v6

    iput-object v6, v1, Lcom/android/launcher3/InvariantDeviceProfile;->allAppsIconTextSize:[F

    .line 55
    invoke-static {v5}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->j(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)[Z

    move-result-object v5

    iput-object v5, v1, Lcom/android/launcher3/InvariantDeviceProfile;->inlineQsb:[Z

    .line 56
    invoke-static/range {p3 .. p3}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->p(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[F

    move-result-object v5

    iput-object v5, v1, Lcom/android/launcher3/InvariantDeviceProfile;->transientTaskbarIconSize:[F

    .line 57
    invoke-static/range {p3 .. p3}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->n(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[Z

    move-result-object v4

    iput-object v4, v1, Lcom/android/launcher3/InvariantDeviceProfile;->startAlignTaskbar:[Z

    .line 58
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.android.launcher3.action.PARTNER_CUSTOMIZATION"

    .line 59
    invoke-static {v4, v5}, Lcom/android/launcher3/util/Partner;->get(Landroid/content/pm/PackageManager;Ljava/lang/String;)Lcom/android/launcher3/util/Partner;

    move-result-object v4

    if-nez v4, :cond_5

    goto :goto_4

    :cond_5
    :try_start_0
    const-string v5, "grid_num_rows"

    .line 60
    invoke-virtual {v4, v5}, Lcom/android/launcher3/util/Partner;->getIntValue(Ljava/lang/String;)I

    move-result v5

    const-string v6, "grid_num_columns"

    .line 61
    invoke-virtual {v4, v6}, Lcom/android/launcher3/util/Partner;->getIntValue(Ljava/lang/String;)I

    move-result v6

    .line 62
    invoke-virtual {v4}, Lcom/android/launcher3/util/Partner;->getDimenValue()F

    move-result v4

    if-lez v5, :cond_6

    if-lez v6, :cond_6

    .line 63
    iput v5, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    .line 64
    iput v6, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    :cond_6
    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-lez v5, :cond_7

    .line 65
    iget-object v5, v1, Lcom/android/launcher3/InvariantDeviceProfile;->iconSize:[F

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 66
    sget-object v6, Lcom/android/launcher3/Utilities;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    int-to-float v0, v0

    div-float/2addr v0, v12

    div-float/2addr v4, v0

    aput v4, v5, v7
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    const-string v4, "IDP"

    const-string v5, "Invalid Partner grid resource!"

    .line 67
    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    :cond_7
    :goto_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 69
    new-instance v4, Landroid/graphics/Point;

    iget-object v5, v2, Lcom/android/launcher3/util/DisplayController$Info;->currentSize:Landroid/graphics/Point;

    invoke-direct {v4, v5}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iput-object v4, v1, Lcom/android/launcher3/InvariantDeviceProfile;->defaultWallpaperSize:Landroid/graphics/Point;

    .line 70
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 71
    iget-object v5, v2, Lcom/android/launcher3/util/DisplayController$Info;->supportedBounds:Ljava/util/Set;

    check-cast v5, Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/util/WindowBounds;

    .line 72
    new-instance v9, Lcom/android/launcher3/DeviceProfile$Builder;

    move-object/from16 v10, p1

    invoke-direct {v9, v10, v1, v2}, Lcom/android/launcher3/DeviceProfile$Builder;-><init>(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;Lcom/android/launcher3/util/DisplayController$Info;)V

    if-ne v3, v8, :cond_8

    move v11, v8

    goto :goto_6

    :cond_8
    move v11, v7

    .line 73
    :goto_6
    invoke-virtual {v9, v11}, Lcom/android/launcher3/DeviceProfile$Builder;->setIsMultiDisplay(Z)V

    .line 74
    invoke-virtual {v9, v6}, Lcom/android/launcher3/DeviceProfile$Builder;->setWindowBounds(Lcom/android/launcher3/util/WindowBounds;)V

    .line 75
    invoke-virtual {v9, v4}, Lcom/android/launcher3/DeviceProfile$Builder;->setDotRendererCache(Landroid/util/SparseArray;)V

    .line 76
    invoke-virtual {v9}, Lcom/android/launcher3/DeviceProfile$Builder;->build()Lcom/android/launcher3/DeviceProfile;

    move-result-object v9

    .line 77
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v9, v6, Lcom/android/launcher3/util/WindowBounds;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    .line 79
    iget-object v6, v6, Lcom/android/launcher3/util/WindowBounds;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 80
    iget-object v11, v1, Lcom/android/launcher3/InvariantDeviceProfile;->defaultWallpaperSize:Landroid/graphics/Point;

    iget v13, v11, Landroid/graphics/Point;->y:I

    invoke-static {v13, v6}, Ljava/lang/Math;->max(II)I

    move-result v13

    iput v13, v11, Landroid/graphics/Point;->y:I

    .line 81
    invoke-static {v9, v6}, Ljava/lang/Math;->min(II)I

    move-result v11

    int-to-float v11, v11

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/util/DisplayController$Info;->getDensityDpi()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v13, v12

    div-float/2addr v11, v13

    const/high16 v13, 0x44340000    # 720.0f

    cmpg-float v11, v11, v13

    if-gez v11, :cond_9

    const/high16 v6, 0x40000000    # 2.0f

    goto :goto_7

    :cond_9
    int-to-float v11, v9

    int-to-float v6, v6

    div-float/2addr v11, v6

    const v6, 0x3e9d89d7

    mul-float/2addr v11, v6

    const v6, 0x3f80fc10

    add-float/2addr v6, v11

    .line 82
    :goto_7
    iget-object v11, v1, Lcom/android/launcher3/InvariantDeviceProfile;->defaultWallpaperSize:Landroid/graphics/Point;

    iget v13, v11, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    mul-float/2addr v6, v9

    .line 83
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-static {v13, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v11, Landroid/graphics/Point;->x:I

    goto :goto_5

    .line 84
    :cond_a
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/android/launcher3/InvariantDeviceProfile;->supportedProfiles:Ljava/util/List;

    .line 85
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/android/launcher3/y;

    invoke-direct {v2, v7}, Lcom/android/launcher3/y;-><init>(I)V

    .line 86
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/android/launcher3/z;

    invoke-direct {v2}, Lcom/android/launcher3/z;-><init>()V

    .line 87
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    .line 88
    invoke-interface {v0}, Ljava/util/stream/IntStream;->min()Ljava/util/OptionalInt;

    move-result-object v0

    .line 89
    invoke-virtual {v0, v7}, Ljava/util/OptionalInt;->orElse(I)I

    move-result v0

    .line 90
    iget-object v1, v1, Lcom/android/launcher3/InvariantDeviceProfile;->supportedProfiles:Ljava/util/List;

    .line 91
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/y;

    invoke-direct {v2, v8}, Lcom/android/launcher3/y;-><init>(I)V

    .line 92
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/A;

    invoke-direct {v2, v0}, Lcom/android/launcher3/A;-><init>(I)V

    .line 93
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void

    :array_0
    .array-data 4
        0x78
        0xa0
        0xd5
        0xf0
        0x140
        0x1e0
        0x280
    .end array-data
.end method

.method private static invDistWeightedInterpolate(Lcom/android/launcher3/util/DisplayController$Info;Ljava/util/ArrayList;I)Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;
    .locals 11

    iget-object v0, p0, Lcom/android/launcher3/util/DisplayController$Info;->supportedBounds:Ljava/util/Set;

    check-cast v0, Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const v1, 0x7fffffff

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/util/WindowBounds;

    invoke-virtual {p0, v3}, Lcom/android/launcher3/util/DisplayController$Info;->isTablet(Lcom/android/launcher3/util/WindowBounds;)Z

    move-result v5

    iget-object v3, v3, Lcom/android/launcher3/util/WindowBounds;->availableSize:Landroid/graphics/Point;

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    if-ne p2, v6, :cond_0

    iget v4, v3, Landroid/graphics/Point;->x:I

    div-int/lit8 v4, v4, 0x2

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_0

    :cond_0
    if-nez v5, :cond_2

    iget v5, v3, Landroid/graphics/Point;->x:I

    iget v7, v3, Landroid/graphics/Point;->y:I

    if-le v5, v7, :cond_1

    move v4, v6

    :cond_1
    if-eqz v4, :cond_2

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v3, v3, Landroid/graphics/Point;->x:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_0

    :cond_2
    iget v4, v3, Landroid/graphics/Point;->x:I

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_0

    :cond_3
    int-to-float p2, v1

    invoke-virtual {p0}, Lcom/android/launcher3/util/DisplayController$Info;->getDensityDpi()I

    move-result v0

    sget-object v1, Lcom/android/launcher3/Utilities;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    int-to-float v0, v0

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    div-float/2addr p2, v0

    int-to-float v0, v2

    invoke-virtual {p0}, Lcom/android/launcher3/util/DisplayController$Info;->getDensityDpi()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v1

    div-float/2addr v0, p0

    new-instance p0, Lcom/android/launcher3/E;

    invoke-direct {p0, p2, v0}, Lcom/android/launcher3/E;-><init>(FF)V

    invoke-static {p1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;

    iget-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->grid:Lcom/android/launcher3/InvariantDeviceProfile$GridOption;

    invoke-static {p0}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->m(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)F

    move-result v2

    invoke-static {p0}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->l(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)F

    move-result v3

    sub-float/2addr v2, p2

    float-to-double v5, v2

    sub-float/2addr v3, v0

    float-to-double v2, v3

    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v2, v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_4

    return-object p0

    :cond_4
    new-instance v2, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;

    invoke-direct {v2, v1}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;-><init>(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)V

    move v5, v3

    move v1, v4

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_6

    int-to-float v6, v1

    const/high16 v7, 0x40400000    # 3.0f

    cmpg-float v6, v6, v7

    if-gez v6, :cond_6

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;

    invoke-static {v6}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->m(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)F

    move-result v7

    invoke-static {v6}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->l(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)F

    move-result v8

    sub-float/2addr v7, p2

    float-to-double v9, v7

    sub-float/2addr v8, v0

    float-to-double v7, v8

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v7

    double-to-float v7, v7

    invoke-static {v7, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-nez v8, :cond_5

    const/high16 v7, 0x7f800000    # Float.POSITIVE_INFINITY

    goto :goto_2

    :cond_5
    float-to-double v7, v7

    const/high16 v9, 0x40a00000    # 5.0f

    float-to-double v9, v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    const-wide v9, 0x40f86a0000000000L    # 100000.0

    div-double/2addr v9, v7

    double-to-float v7, v9

    :goto_2
    add-float/2addr v5, v7

    new-instance v8, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;

    invoke-direct {v8}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;-><init>()V

    invoke-static {v8, v6}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->q(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)V

    invoke-static {v8, v7}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->r(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;F)V

    invoke-static {v2, v8}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->q(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    const/high16 p1, 0x3f800000    # 1.0f

    div-float/2addr p1, v5

    invoke-static {v2, p1}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->r(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;F)V

    :goto_3
    const/4 p1, 0x4

    if-ge v4, p1, :cond_7

    invoke-static {v2}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->j(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[F

    move-result-object p1

    invoke-static {v2}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->j(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[F

    move-result-object p2

    aget p2, p2, v4

    invoke-static {p0}, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;->j(Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)[F

    move-result-object v0

    aget v0, v0, v4

    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    aput p2, p1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_7
    return-object v2
.end method

.method private onConfigChanged(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/launcher3/InvariantDeviceProfile;->toModelState()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1}, Lcom/android/launcher3/InvariantDeviceProfile;->getCurrentGridName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/launcher3/InvariantDeviceProfile;->initGrid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/launcher3/InvariantDeviceProfile;->toModelState()[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->mChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/InvariantDeviceProfile$OnIDPChangeListener;

    invoke-interface {v0, p1}, Lcom/android/launcher3/InvariantDeviceProfile$OnIDPChangeListener;->onIdpChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private toModelState()[Ljava/lang/Object;
    .locals 9

    iget v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numSearchContainerColumns:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numDatabaseHotseatIcons:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->iconBitmapSize:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->fillResIconDpi:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->numDatabaseAllAppsColumns:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, p0, Lcom/android/launcher3/InvariantDeviceProfile;->dbFile:Ljava/lang/String;

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final addOnChangeListener(Lcom/android/launcher3/InvariantDeviceProfile$OnIDPChangeListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->mChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final getBestMatch(FFI)Lcom/android/launcher3/DeviceProfile;
    .locals 5

    iget-object v0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->supportedProfiles:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/DeviceProfile;

    iget-object p0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->supportedProfiles:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/DeviceProfile;

    iget v3, v2, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    int-to-float v3, v3

    sub-float/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, v2, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    int-to-float v4, v4

    sub-float/2addr v4, p2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    add-float/2addr v4, v3

    cmpg-float v3, v4, v1

    if-gez v3, :cond_1

    move-object v0, v2

    move v1, v4

    goto :goto_0

    :cond_1
    cmpl-float v3, v4, v1

    if-nez v3, :cond_0

    iget v3, v2, Lcom/android/launcher3/DeviceProfile;->rotationHint:I

    if-ne v3, p3, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final getDeviceProfile(Landroid/content/Context;)Lcom/android/launcher3/DeviceProfile;
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v2, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    iget v1, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v0

    sget-object v0, Lcom/android/launcher3/util/window/WindowManagerProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/window/WindowManagerProxy;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/window/WindowManagerProxy;->getRotation(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {p0, v2, v1, p1}, Lcom/android/launcher3/InvariantDeviceProfile;->getBestMatch(FFI)Lcom/android/launcher3/DeviceProfile;

    move-result-object p0

    return-object p0
.end method

.method public final parseAllGridOptions(Landroid/content/Context;)Ljava/util/List;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f160009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    if-le v4, v2, :cond_2

    :cond_1
    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const-string v3, "grid-option"

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;

    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    :try_start_2
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_3

    :try_start_3
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    const-string v0, "IDP"

    const-string v1, "Error parsing device profile"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/launcher3/x;

    invoke-direct {v0, p0}, Lcom/android/launcher3/x;-><init>(Lcom/android/launcher3/InvariantDeviceProfile;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final reinitializeAfterRestore(Landroid/content/Context;)V
    .locals 6

    const-string v0, "IDP"

    const-string v1, "Reinitializing grid after restore"

    invoke-static {v0, v1}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/launcher3/InvariantDeviceProfile;->getCurrentGridName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/InvariantDeviceProfile;->dbFile:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/android/launcher3/InvariantDeviceProfile;->initGrid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/InvariantDeviceProfile;->dbFile:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Restored grid is disabled : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", migrating to: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", removing all other grid db files"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/launcher3/LauncherFiles;->GRID_DB_FILES:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v4}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "Removed old grid db file: "

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/launcher3/LauncherPrefs;->Companion:Lcom/android/launcher3/LauncherPrefs$Companion;

    invoke-static {p1}, Lcom/android/launcher3/LauncherPrefs$Companion;->get(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherPrefs;->GRID_NAME:Lcom/android/launcher3/ConstantItem;

    invoke-virtual {v0, v1, v3}, Lcom/android/launcher3/LauncherPrefs;->put(Lcom/android/launcher3/ConstantItem;Ljava/lang/Object;)V

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher3/D;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, p0}, Lcom/android/launcher3/D;-><init>(ILandroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method

.method public final removeOnChangeListener(Lcom/android/launcher3/InvariantDeviceProfile$OnIDPChangeListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/InvariantDeviceProfile;->mChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
