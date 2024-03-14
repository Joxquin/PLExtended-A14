.class public final synthetic Lcom/android/quickstep/views/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic d:Lcom/android/quickstep/views/DesktopAppSelectView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/views/DesktopAppSelectView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/b;->d:Lcom/android/quickstep/views/DesktopAppSelectView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/views/b;->d:Lcom/android/quickstep/views/DesktopAppSelectView;

    invoke-static {p0, p1}, Lcom/android/quickstep/views/DesktopAppSelectView;->a(Lcom/android/quickstep/views/DesktopAppSelectView;Landroid/animation/ValueAnimator;)V

    return-void
.end method
