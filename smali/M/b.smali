.class public final LM/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;


# instance fields
.field public final a:LF2/k;


# direct methods
.method public constructor <init>(LF2/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LM/b;->a:LF2/k;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, LM/b;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, LM/b;

    iget-object p0, p0, LM/b;->a:LF2/k;

    iget-object p1, p1, LM/b;->a:LF2/k;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, LM/b;->a:LF2/k;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final onTouchExplorationStateChanged(Z)V
    .locals 2

    iget-object p0, p0, LM/b;->a:LF2/k;

    iget-object p0, p0, LF2/k;->a:LF2/q;

    iget-object v0, p0, LF2/q;->e:Landroid/widget/AutoCompleteTextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/EditText;->getInputType()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    const/4 v1, 0x2

    :cond_1
    sget-object p1, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    iget-object p0, p0, LF2/w;->d:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-static {p0, v1}, Landroidx/core/view/x;->o(Landroid/view/View;I)V

    :cond_2
    return-void
.end method
