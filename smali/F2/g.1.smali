.class public final LF2/g;
.super LF2/w;
.source "SourceFile"


# virtual methods
.method public final r()V
    .locals 1

    iget-object p0, p0, LF2/w;->b:LF2/v;

    const/4 v0, 0x0

    iput-object v0, p0, LF2/v;->o:Landroid/view/View$OnLongClickListener;

    iget-object p0, p0, LF2/v;->i:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-static {p0, v0}, LF2/x;->c(Lcom/google/android/material/internal/CheckableImageButton;Landroid/view/View$OnLongClickListener;)V

    return-void
.end method
