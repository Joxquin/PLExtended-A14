.class Lcom/android/quickstep/interaction/TutorialFragment$2;
.super Landroid/graphics/drawable/Animatable2$AnimationCallback;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/interaction/TutorialFragment;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/interaction/TutorialFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/interaction/TutorialFragment$2;->this$0:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-direct {p0}, Landroid/graphics/drawable/Animatable2$AnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/graphics/drawable/Animatable2$AnimationCallback;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lcom/android/quickstep/interaction/TutorialFragment$2;->this$0:Lcom/android/quickstep/interaction/TutorialFragment;

    invoke-static {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->d(Lcom/android/quickstep/interaction/TutorialFragment;)Landroid/graphics/drawable/AnimatedVectorDrawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    return-void
.end method
