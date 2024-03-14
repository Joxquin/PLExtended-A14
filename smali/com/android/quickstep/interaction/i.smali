.class public final synthetic Lcom/android/quickstep/interaction/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic d:Lcom/android/quickstep/interaction/EdgeBackGesturePanel;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/interaction/EdgeBackGesturePanel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/interaction/i;->d:Lcom/android/quickstep/interaction/EdgeBackGesturePanel;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/interaction/i;->d:Lcom/android/quickstep/interaction/EdgeBackGesturePanel;

    invoke-static {p0, p1}, Lcom/android/quickstep/interaction/EdgeBackGesturePanel;->c(Lcom/android/quickstep/interaction/EdgeBackGesturePanel;Landroid/animation/ValueAnimator;)V

    return-void
.end method
