.class public final LF2/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic d:LF2/v;


# direct methods
.method public constructor <init>(LF2/v;)V
    .locals 0

    iput-object p1, p0, LF2/t;->d:LF2/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, LF2/t;->d:LF2/v;

    invoke-virtual {p0}, LF2/v;->a()V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    iget-object p0, p0, LF2/t;->d:LF2/v;

    iget-object p1, p0, LF2/v;->u:LF2/k;

    if-eqz p1, :cond_0

    iget-object p0, p0, LF2/v;->t:Landroid/view/accessibility/AccessibilityManager;

    if-eqz p0, :cond_0

    new-instance v0, LM/b;

    invoke-direct {v0, p1}, LM/b;-><init>(LF2/k;)V

    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityManager;->removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    :cond_0
    return-void
.end method
