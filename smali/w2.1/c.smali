.class public final Lw2/c;
.super Lcom/google/android/material/button/MaterialButton;
.source "SourceFile"

# interfaces
.implements Lz/b;


# static fields
.field public static final synthetic v:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lw2/a;

    const-string v1, "width"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lw2/a;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lw2/a;

    const-string v1, "height"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lw2/a;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lw2/a;

    const-string v1, "paddingStart"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lw2/a;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lw2/a;

    const-string v1, "paddingEnd"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lw2/a;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a()Lz/c;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCollapsedSize()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/material/button/MaterialButton;->onAttachedToWindow()V

    return-void
.end method

.method public final setPadding(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Button;->setPadding(IIII)V

    return-void
.end method

.method public final setPaddingRelative(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    return-void
.end method

.method public final setTextColor(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/Button;->setTextColor(I)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/Button;->getTextColors()Landroid/content/res/ColorStateList;

    return-void
.end method

.method public final setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 3
    invoke-super {p0, p1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/Button;->getTextColors()Landroid/content/res/ColorStateList;

    return-void
.end method
