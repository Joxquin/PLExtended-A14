.class public final LF2/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LF2/M;


# instance fields
.field public final synthetic a:LF2/v;


# direct methods
.method public constructor <init>(LF2/v;)V
    .locals 0

    iput-object p1, p0, LF2/s;->a:LF2/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 2

    iget-object p0, p0, LF2/s;->a:LF2/v;

    iget-object v0, p0, LF2/v;->s:Landroid/widget/EditText;

    iget-object v1, p1, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, LF2/v;->v:LF2/r;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, LF2/v;->s:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getOnFocusChangeListener()Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    invoke-virtual {p0}, LF2/v;->c()LF2/w;

    move-result-object v1

    invoke-virtual {v1}, LF2/w;->e()Landroid/view/View$OnFocusChangeListener;

    move-result-object v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, LF2/v;->s:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_1
    iget-object p1, p1, Lcom/google/android/material/textfield/TextInputLayout;->g:Landroid/widget/EditText;

    iput-object p1, p0, LF2/v;->s:Landroid/widget/EditText;

    if-eqz p1, :cond_2

    iget-object v0, p0, LF2/v;->v:LF2/r;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_2
    invoke-virtual {p0}, LF2/v;->c()LF2/w;

    move-result-object p1

    iget-object v0, p0, LF2/v;->s:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, LF2/w;->m(Landroid/widget/EditText;)V

    invoke-virtual {p0}, LF2/v;->c()LF2/w;

    move-result-object p1

    invoke-virtual {p0, p1}, LF2/v;->i(LF2/w;)V

    return-void
.end method
