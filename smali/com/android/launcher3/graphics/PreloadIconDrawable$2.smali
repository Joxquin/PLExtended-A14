.class final Lcom/android/launcher3/graphics/PreloadIconDrawable$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/graphics/PreloadIconDrawable;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/graphics/PreloadIconDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable$2;->this$0:Lcom/android/launcher3/graphics/PreloadIconDrawable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/graphics/PreloadIconDrawable$2;->this$0:Lcom/android/launcher3/graphics/PreloadIconDrawable;

    invoke-static {p0}, Lcom/android/launcher3/graphics/PreloadIconDrawable;->d(Lcom/android/launcher3/graphics/PreloadIconDrawable;)V

    return-void
.end method
