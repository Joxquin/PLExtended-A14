.class public final Lcom/google/android/material/timepicker/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final d:Lcom/google/android/material/timepicker/ChipTextInputComboView;

.field public final e:Lcom/google/android/material/timepicker/ChipTextInputComboView;

.field public final f:Lcom/google/android/material/timepicker/n;

.field public g:Z


# direct methods
.method public constructor <init>(Lcom/google/android/material/timepicker/ChipTextInputComboView;Lcom/google/android/material/timepicker/ChipTextInputComboView;Lcom/google/android/material/timepicker/n;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/timepicker/r;->g:Z

    iput-object p1, p0, Lcom/google/android/material/timepicker/r;->d:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    iput-object p2, p0, Lcom/google/android/material/timepicker/r;->e:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    iput-object p3, p0, Lcom/google/android/material/timepicker/r;->f:Lcom/google/android/material/timepicker/n;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/timepicker/r;->e:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    const/16 v1, 0xc

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->setChecked(Z)V

    iget-object v0, p0, Lcom/google/android/material/timepicker/r;->d:Lcom/google/android/material/timepicker/ChipTextInputComboView;

    const/16 v1, 0xa

    if-ne p1, v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->setChecked(Z)V

    iget-object p0, p0, Lcom/google/android/material/timepicker/r;->f:Lcom/google/android/material/timepicker/n;

    iput p1, p0, Lcom/google/android/material/timepicker/n;->i:I

    return-void
.end method

.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x5

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const/16 p2, 0xc

    invoke-virtual {p0, p2}, Lcom/google/android/material/timepicker/r;->a(I)V

    :cond_1
    return p1
.end method

.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5

    iget-boolean v0, p0, Lcom/google/android/material/timepicker/r;->g:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/timepicker/r;->g:Z

    check-cast p1, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/google/android/material/timepicker/r;->f:Lcom/google/android/material/timepicker/n;

    iget v2, v2, Lcom/google/android/material/timepicker/n;->i:I

    const/16 v3, 0xc

    if-ne v2, v3, :cond_3

    const/16 v2, 0x43

    if-ne p2, v2, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    if-eqz p1, :cond_2

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Lcom/google/android/material/timepicker/r;->a(I)V

    goto :goto_3

    :cond_2
    :goto_1
    move v0, v1

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v4, 0x7

    if-lt p2, v4, :cond_5

    const/16 v4, 0x10

    if-gt p2, v4, :cond_5

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-ne p2, v0, :cond_5

    invoke-virtual {p1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_5

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result p1

    if-ne p1, p2, :cond_5

    move p1, v0

    goto :goto_2

    :cond_5
    move p1, v1

    :goto_2
    if-eqz p1, :cond_2

    invoke-virtual {p0, v3}, Lcom/google/android/material/timepicker/r;->a(I)V

    :goto_3
    iput-boolean v1, p0, Lcom/google/android/material/timepicker/r;->g:Z

    return v0
.end method
