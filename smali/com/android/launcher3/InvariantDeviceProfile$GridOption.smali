.class public final Lcom/android/launcher3/InvariantDeviceProfile$GridOption;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final allAppsStyle:I

.field private final cellStyle:I

.field private final dbFile:Ljava/lang/String;

.field private final defaultLayoutId:I

.field private final demoModeLayoutId:I

.field public final deviceCategory:I

.field private final devicePaddingId:I

.field private final folderStyle:I

.field private final hotseatColumnSpan:[I

.field private inlineNavButtonsEndSpacing:I

.field private final inlineQsb:[Z

.field private final isScalable:Z

.field private final mAllAppsSpecsId:I

.field private final mAllAppsSpecsTwoPanelId:I

.field private final mFolderSpecsId:I

.field private final mFolderSpecsTwoPanelId:I

.field private final mHotseatSpecsId:I

.field private final mHotseatSpecsTwoPanelId:I

.field private final mWorkspaceSpecsId:I

.field private final mWorkspaceSpecsTwoPanelId:I

.field public final name:Ljava/lang/String;

.field private final numAllAppsColumns:I

.field public final numColumns:I

.field private final numDatabaseAllAppsColumns:I

.field private final numDatabaseHotseatIcons:I

.field private final numFolderColumns:I

.field private final numFolderRows:I

.field private final numHotseatIcons:I

.field public final numRows:I

.field public final numSearchContainerColumns:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->hotseatColumnSpan:[I

    new-array v2, v0, [Z

    iput-object v2, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->inlineQsb:[Z

    sget-object v3, Lcom/android/launcher3/R$styleable;->GridDisplayOption:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 p2, 0x15

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->name:Ljava/lang/String;

    const/16 p2, 0x1d

    const/4 v3, 0x0

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numRows:I

    const/16 v4, 0x17

    invoke-virtual {p1, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numColumns:I

    const/16 v5, 0x1e

    invoke-virtual {p1, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numSearchContainerColumns:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->dbFile:Ljava/lang/String;

    const/4 v5, 0x5

    invoke-virtual {p1, v5, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->defaultLayoutId:I

    const/4 v6, 0x6

    invoke-virtual {p1, v6, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->demoModeLayoutId:I

    const v5, 0x7f14000b

    const/4 v6, 0x2

    invoke-virtual {p1, v6, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->allAppsStyle:I

    const/16 v5, 0x16

    invoke-virtual {p1, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numAllAppsColumns:I

    const/16 v7, 0x18

    mul-int/2addr v5, v6

    invoke-virtual {p1, v7, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numDatabaseAllAppsColumns:I

    const/16 v5, 0x1c

    invoke-virtual {p1, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numHotseatIcons:I

    const/16 v7, 0x19

    mul-int/2addr v5, v6

    invoke-virtual {p1, v7, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numDatabaseHotseatIcons:I

    const/16 v5, 0xc

    invoke-virtual {p1, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    aput v5, v1, v3

    const/16 v5, 0xd

    invoke-virtual {p1, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    const/4 v7, 0x1

    aput v5, v1, v7

    const/16 v5, 0xe

    invoke-virtual {p1, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    const/4 v8, 0x3

    aput v5, v1, v8

    const/16 v5, 0xf

    invoke-virtual {p1, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    aput v5, v1, v6

    const/16 v1, 0x12

    const v5, 0x7f07050c

    invoke-virtual {p1, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->inlineNavButtonsEndSpacing:I

    const/16 v1, 0x1b

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numFolderRows:I

    const/16 p2, 0x1a

    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numFolderColumns:I

    const/16 p2, 0xb

    const/4 v1, -0x1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->folderStyle:I

    const p2, 0x7f140137

    invoke-virtual {p1, v8, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->cellStyle:I

    const/16 p2, 0x14

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->isScalable:Z

    const/16 p2, 0x8

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->devicePaddingId:I

    const/4 v4, 0x7

    invoke-virtual {p1, v4, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->deviceCategory:I

    sget-object v4, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_RESPONSIVE_WORKSPACE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v4}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x1f

    invoke-virtual {p1, v4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->mWorkspaceSpecsId:I

    const/16 v4, 0x20

    invoke-virtual {p1, v4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->mWorkspaceSpecsTwoPanelId:I

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->mAllAppsSpecsId:I

    invoke-virtual {p1, v7, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->mAllAppsSpecsTwoPanelId:I

    const/16 v4, 0x9

    invoke-virtual {p1, v4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->mFolderSpecsId:I

    const/16 v4, 0xa

    invoke-virtual {p1, v4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->mFolderSpecsTwoPanelId:I

    const/16 v4, 0x10

    invoke-virtual {p1, v4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->mHotseatSpecsId:I

    const/16 v4, 0x11

    invoke-virtual {p1, v4, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->mHotseatSpecsTwoPanelId:I

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->mWorkspaceSpecsId:I

    iput v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->mWorkspaceSpecsTwoPanelId:I

    iput v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->mAllAppsSpecsId:I

    iput v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->mAllAppsSpecsTwoPanelId:I

    iput v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->mFolderSpecsId:I

    iput v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->mFolderSpecsTwoPanelId:I

    iput v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->mHotseatSpecsId:I

    iput v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->mHotseatSpecsTwoPanelId:I

    :goto_0
    const/16 p0, 0x13

    invoke-virtual {p1, p0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    and-int/lit8 v1, p0, 0x1

    if-ne v1, v7, :cond_1

    move v1, v7

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    aput-boolean v1, v2, v3

    and-int/lit8 v1, p0, 0x2

    if-ne v1, v6, :cond_2

    move v1, v7

    goto :goto_2

    :cond_2
    move v1, v3

    :goto_2
    aput-boolean v1, v2, v7

    and-int/lit8 v1, p0, 0x4

    if-ne v1, v0, :cond_3

    move v0, v7

    goto :goto_3

    :cond_3
    move v0, v3

    :goto_3
    aput-boolean v0, v2, v6

    and-int/2addr p0, p2

    if-ne p0, p2, :cond_4

    move v3, v7

    :cond_4
    aput-boolean v3, v2, v8

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->allAppsStyle:I

    return p0
.end method

.method public static bridge synthetic b(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->cellStyle:I

    return p0
.end method

.method public static bridge synthetic c(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->dbFile:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->defaultLayoutId:I

    return p0
.end method

.method public static bridge synthetic e(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->demoModeLayoutId:I

    return p0
.end method

.method public static bridge synthetic f(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->devicePaddingId:I

    return p0
.end method

.method public static bridge synthetic g(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->folderStyle:I

    return p0
.end method

.method public static bridge synthetic h(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)[I
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->hotseatColumnSpan:[I

    return-object p0
.end method

.method public static bridge synthetic i(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->inlineNavButtonsEndSpacing:I

    return p0
.end method

.method public static bridge synthetic j(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)[Z
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->inlineQsb:[Z

    return-object p0
.end method

.method public static bridge synthetic k(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->isScalable:Z

    return p0
.end method

.method public static bridge synthetic l(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->mAllAppsSpecsId:I

    return p0
.end method

.method public static bridge synthetic m(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->mAllAppsSpecsTwoPanelId:I

    return p0
.end method

.method public static bridge synthetic n(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->mFolderSpecsId:I

    return p0
.end method

.method public static bridge synthetic o(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->mFolderSpecsTwoPanelId:I

    return p0
.end method

.method public static bridge synthetic p(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->mHotseatSpecsId:I

    return p0
.end method

.method public static bridge synthetic q(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->mHotseatSpecsTwoPanelId:I

    return p0
.end method

.method public static bridge synthetic r(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->mWorkspaceSpecsId:I

    return p0
.end method

.method public static bridge synthetic s(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->mWorkspaceSpecsTwoPanelId:I

    return p0
.end method

.method public static bridge synthetic t(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numAllAppsColumns:I

    return p0
.end method

.method public static bridge synthetic u(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numDatabaseAllAppsColumns:I

    return p0
.end method

.method public static bridge synthetic v(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numDatabaseHotseatIcons:I

    return p0
.end method

.method public static bridge synthetic w(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numFolderColumns:I

    return p0
.end method

.method public static bridge synthetic x(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numFolderRows:I

    return p0
.end method

.method public static bridge synthetic y(Lcom/android/launcher3/InvariantDeviceProfile$GridOption;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->numHotseatIcons:I

    return p0
.end method


# virtual methods
.method public final isEnabled(I)Z
    .locals 3

    iget p0, p0, Lcom/android/launcher3/InvariantDeviceProfile$GridOption;->deviceCategory:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_4

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    return v0

    :cond_0
    and-int/2addr p0, v2

    if-ne p0, v2, :cond_1

    move v0, v1

    :cond_1
    return v0

    :cond_2
    const/4 p1, 0x4

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_3

    move v0, v1

    :cond_3
    return v0

    :cond_4
    and-int/2addr p0, v1

    if-ne p0, v1, :cond_5

    move v0, v1

    :cond_5
    return v0
.end method
