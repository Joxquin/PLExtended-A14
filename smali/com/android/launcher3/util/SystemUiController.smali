.class public final Lcom/android/launcher3/util/SystemUiController;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mStates:[I

.field private final mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/view/Window;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/util/SystemUiController;->mStates:[I

    iput-object p1, p0, Lcom/android/launcher3/util/SystemUiController;->mWindow:Landroid/view/Window;

    return-void
.end method


# virtual methods
.method public final getBaseSysuiVisibility()I
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/util/SystemUiController;->mStates:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object p0, p0, Lcom/android/launcher3/util/SystemUiController;->mWindow:Landroid/view/Window;

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p0

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    or-int/lit8 p0, p0, 0x10

    goto :goto_0

    :cond_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    and-int/lit8 p0, p0, -0x11

    :cond_1
    :goto_0
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    or-int/lit16 p0, p0, 0x2000

    goto :goto_1

    :cond_2
    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    and-int/lit16 p0, p0, -0x2001

    :cond_3
    :goto_1
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mStates="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/util/SystemUiController;->mStates:[I

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateUiState(II)V
    .locals 5

    iget-object v0, p0, Lcom/android/launcher3/util/SystemUiController;->mStates:[I

    aget v1, v0, p1

    if-ne v1, p2, :cond_0

    return-void

    :cond_0
    aput p2, v0, p1

    iget-object p0, p0, Lcom/android/launcher3/util/SystemUiController;->mWindow:Landroid/view/Window;

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p1

    array-length p2, v0

    const/4 v1, 0x0

    move v2, p1

    :goto_0
    if-ge v1, p2, :cond_5

    aget v3, v0, v1

    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_1

    or-int/lit8 v2, v2, 0x10

    goto :goto_1

    :cond_1
    and-int/lit8 v4, v3, 0x2

    if-eqz v4, :cond_2

    and-int/lit8 v2, v2, -0x11

    :cond_2
    :goto_1
    and-int/lit8 v4, v3, 0x4

    if-eqz v4, :cond_3

    or-int/lit16 v2, v2, 0x2000

    goto :goto_2

    :cond_3
    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_4

    and-int/lit16 v2, v2, -0x2001

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    if-eq v2, p1, :cond_6

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_6
    return-void
.end method
