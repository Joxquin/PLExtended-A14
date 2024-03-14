.class public final Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mExtractedColor:Ljava/lang/Integer;

.field mGenerationMode:I

.field mIsInstantApp:Z

.field mShrinkNonAdaptiveIcons:Z

.field mUserHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->mShrinkNonAdaptiveIcons:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->mGenerationMode:I

    return-void
.end method


# virtual methods
.method public final setBitmapGenerationMode()V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->mGenerationMode:I

    return-void
.end method

.method public final setExtractedColor(I)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->mExtractedColor:Ljava/lang/Integer;

    return-void
.end method

.method public final setInstantApp(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->mIsInstantApp:Z

    return-void
.end method

.method public final setShrinkNonAdaptiveIcons()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->mShrinkNonAdaptiveIcons:Z

    return-void
.end method

.method public final setUser(Landroid/os/UserHandle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/icons/BaseIconFactory$IconOptions;->mUserHandle:Landroid/os/UserHandle;

    return-void
.end method
