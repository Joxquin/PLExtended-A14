.class public Lcom/android/quickstep/util/SurfaceTransaction;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mTmpValues:[F

.field private final mTransaction:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/SurfaceTransaction;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/quickstep/util/SurfaceTransaction;->mTmpValues:[F

    return-void
.end method

.method public static bridge synthetic a(Lcom/android/quickstep/util/SurfaceTransaction;)[F
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/util/SurfaceTransaction;->mTmpValues:[F

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/android/quickstep/util/SurfaceTransaction;)Landroid/view/SurfaceControl$Transaction;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/util/SurfaceTransaction;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    return-object p0
.end method


# virtual methods
.method public forSurface(Landroid/view/SurfaceControl;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;
    .locals 1

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    invoke-direct {v0, p0, p1}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;-><init>(Lcom/android/quickstep/util/SurfaceTransaction;Landroid/view/SurfaceControl;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/quickstep/util/SurfaceTransaction$MockProperties;

    invoke-direct {v0, p0}, Lcom/android/quickstep/util/SurfaceTransaction$MockProperties;-><init>(Lcom/android/quickstep/util/SurfaceTransaction;)V

    :goto_0
    return-object v0
.end method

.method public getTransaction()Landroid/view/SurfaceControl$Transaction;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/util/SurfaceTransaction;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    return-object p0
.end method
