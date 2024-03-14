.class public final LF2/L;
.super Landroidx/core/view/b;
.source "SourceFile"


# instance fields
.field public final d:Lcom/google/android/material/textfield/TextInputLayout;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 0

    invoke-direct {p0}, Landroidx/core/view/b;-><init>()V

    iput-object p1, p0, LF2/L;->d:Lcom/google/android/material/textfield/TextInputLayout;

    return-void
.end method


# virtual methods
.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;LM/e;)V
    .locals 13

    invoke-super {p0, p1, p2}, Landroidx/core/view/b;->onInitializeAccessibilityNodeInfo(Landroid/view/View;LM/e;)V

    iget-object p0, p0, LF2/L;->d:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    iget-boolean v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->D:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout;->E:Ljava/lang/CharSequence;

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:LF2/A;

    iget-boolean v3, v2, LF2/A;->k:Z

    if-eqz v3, :cond_2

    iget-object v2, v2, LF2/A;->j:Ljava/lang/CharSequence;

    goto :goto_2

    :cond_2
    move-object v2, v0

    :goto_2
    iget-boolean v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->v:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout;->u:Ljava/lang/CharSequence;

    goto :goto_3

    :cond_3
    move-object v3, v0

    :goto_3
    iget v4, p0, Lcom/google/android/material/textfield/TextInputLayout;->o:I

    iget-boolean v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->n:Z

    if-eqz v5, :cond_4

    iget-boolean v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->p:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/google/android/material/textfield/TextInputLayout;->r:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/widget/TextView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    :cond_4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x1

    xor-int/2addr v5, v6

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    xor-int/2addr v7, v6

    iget-boolean v8, p0, Lcom/google/android/material/textfield/TextInputLayout;->t0:Z

    xor-int/2addr v8, v6

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    xor-int/2addr v9, v6

    if-nez v9, :cond_6

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    goto :goto_4

    :cond_5
    const/4 v10, 0x0

    goto :goto_5

    :cond_6
    :goto_4
    move v10, v6

    :goto_5
    if-eqz v7, :cond_7

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_7
    const-string v1, ""

    :goto_6
    iget-object v7, p0, Lcom/google/android/material/textfield/TextInputLayout;->e:LF2/H;

    iget-object v11, v7, LF2/H;->e:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getVisibility()I

    move-result v11

    iget-object v12, p2, LM/e;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-nez v11, :cond_8

    iget-object v11, v7, LF2/H;->e:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v12, v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLabelFor(Landroid/view/View;)V

    iget-object v7, v7, LF2/H;->e:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v12, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTraversalAfter(Landroid/view/View;)V

    goto :goto_7

    :cond_8
    iget-object v7, v7, LF2/H;->g:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v12, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTraversalAfter(Landroid/view/View;)V

    :goto_7
    if-eqz v5, :cond_9

    invoke-virtual {p2, p1}, LM/e;->k(Ljava/lang/CharSequence;)V

    goto :goto_8

    :cond_9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    invoke-virtual {p2, v1}, LM/e;->k(Ljava/lang/CharSequence;)V

    if-eqz v8, :cond_b

    if-eqz v3, :cond_b

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, LM/e;->k(Ljava/lang/CharSequence;)V

    goto :goto_8

    :cond_a
    if-eqz v3, :cond_b

    invoke-virtual {p2, v3}, LM/e;->k(Ljava/lang/CharSequence;)V

    :cond_b
    :goto_8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual {v12, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setHintText(Ljava/lang/CharSequence;)V

    xor-int/lit8 v1, v5, 0x1

    invoke-virtual {v12, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setShowingHintText(Z)V

    :cond_c
    if-eqz p1, :cond_d

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-ne p1, v4, :cond_d

    goto :goto_9

    :cond_d
    const/4 v4, -0x1

    :goto_9
    invoke-virtual {v12, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMaxTextLength(I)V

    if-eqz v10, :cond_f

    if-eqz v9, :cond_e

    goto :goto_a

    :cond_e
    move-object v2, v0

    :goto_a
    invoke-virtual {v12, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setError(Ljava/lang/CharSequence;)V

    :cond_f
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout;->m:LF2/A;

    iget-object p1, p1, LF2/A;->r:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p1, :cond_10

    invoke-virtual {v12, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLabelFor(Landroid/view/View;)V

    :cond_10
    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:LF2/v;

    invoke-virtual {p0}, LF2/v;->c()LF2/w;

    move-result-object p0

    invoke-virtual {p0, p2}, LF2/w;->n(LM/e;)V

    return-void
.end method

.method public final onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/core/view/b;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object p0, p0, LF2/L;->d:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object p0, p0, Lcom/google/android/material/textfield/TextInputLayout;->f:LF2/v;

    invoke-virtual {p0}, LF2/v;->c()LF2/w;

    move-result-object p0

    invoke-virtual {p0, p2}, LF2/w;->o(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method
