.class Lcom/android/quickstep/views/DigitalWellBeingToast$1;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/views/DigitalWellBeingToast;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/views/DigitalWellBeingToast;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/views/DigitalWellBeingToast$1;->this$0:Lcom/android/quickstep/views/DigitalWellBeingToast;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/views/DigitalWellBeingToast$1;->this$0:Lcom/android/quickstep/views/DigitalWellBeingToast;

    invoke-static {v0}, Lcom/android/quickstep/views/DigitalWellBeingToast;->c(Lcom/android/quickstep/views/DigitalWellBeingToast;)Landroid/view/ViewOutlineProvider;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewOutlineProvider;->getOutline(Landroid/view/View;Landroid/graphics/Outline;)V

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    neg-float p1, p1

    iget-object p0, p0, Lcom/android/quickstep/views/DigitalWellBeingToast$1;->this$0:Lcom/android/quickstep/views/DigitalWellBeingToast;

    invoke-static {p0}, Lcom/android/quickstep/views/DigitalWellBeingToast;->d(Lcom/android/quickstep/views/DigitalWellBeingToast;)F

    move-result p0

    add-float/2addr p0, p1

    const/4 p1, 0x0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-virtual {p2, p1, p0}, Landroid/graphics/Outline;->offset(II)V

    return-void
.end method
