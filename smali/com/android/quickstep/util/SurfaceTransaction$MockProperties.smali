.class public Lcom/android/quickstep/util/SurfaceTransaction$MockProperties;
.super Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;
.source "SourceFile"


# instance fields
.field public alpha:F

.field public cornerRadius:F

.field public matrix:Landroid/graphics/Matrix;

.field public shadowRadius:F

.field final synthetic this$0:Lcom/android/quickstep/util/SurfaceTransaction;

.field public windowCrop:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/util/SurfaceTransaction;)V
    .locals 1

    iput-object p1, p0, Lcom/android/quickstep/util/SurfaceTransaction$MockProperties;->this$0:Lcom/android/quickstep/util/SurfaceTransaction;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;-><init>(Lcom/android/quickstep/util/SurfaceTransaction;Landroid/view/SurfaceControl;)V

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/android/quickstep/util/SurfaceTransaction$MockProperties;->alpha:F

    iput-object v0, p0, Lcom/android/quickstep/util/SurfaceTransaction$MockProperties;->matrix:Landroid/graphics/Matrix;

    iput-object v0, p0, Lcom/android/quickstep/util/SurfaceTransaction$MockProperties;->windowCrop:Landroid/graphics/Rect;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/quickstep/util/SurfaceTransaction$MockProperties;->cornerRadius:F

    iput p1, p0, Lcom/android/quickstep/util/SurfaceTransaction$MockProperties;->shadowRadius:F

    return-void
.end method


# virtual methods
.method public setAlpha(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;
    .locals 0

    iput p1, p0, Lcom/android/quickstep/util/SurfaceTransaction$MockProperties;->alpha:F

    return-object p0
.end method

.method public setCornerRadius(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;
    .locals 0

    iput p1, p0, Lcom/android/quickstep/util/SurfaceTransaction$MockProperties;->cornerRadius:F

    return-object p0
.end method

.method public setLayer(I)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;
    .locals 0

    return-object p0
.end method

.method public setMatrix(Landroid/graphics/Matrix;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/util/SurfaceTransaction$MockProperties;->matrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public setShadowRadius(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;
    .locals 0

    iput p1, p0, Lcom/android/quickstep/util/SurfaceTransaction$MockProperties;->shadowRadius:F

    return-object p0
.end method

.method public setShow()Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;
    .locals 0

    return-object p0
.end method

.method public setWindowCrop(Landroid/graphics/Rect;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/util/SurfaceTransaction$MockProperties;->windowCrop:Landroid/graphics/Rect;

    return-object p0
.end method
