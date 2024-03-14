.class public final Lq2/b;
.super LA2/h;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/google/android/material/chip/Chip;


# direct methods
.method public constructor <init>(Lcom/google/android/material/chip/Chip;)V
    .locals 0

    iput-object p1, p0, Lq2/b;->a:Lcom/google/android/material/chip/Chip;

    invoke-direct {p0}, LA2/h;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    return-void
.end method

.method public final b(Landroid/graphics/Typeface;Z)V
    .locals 0

    iget-object p0, p0, Lq2/b;->a:Lcom/google/android/material/chip/Chip;

    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->h:Lq2/f;

    iget-boolean p2, p1, Lq2/f;->F0:Z

    if-eqz p2, :cond_0

    iget-object p1, p1, Lq2/f;->J:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/CheckBox;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/widget/CheckBox;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/CheckBox;->invalidate()V

    return-void
.end method
