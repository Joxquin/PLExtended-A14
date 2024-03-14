.class public final LR/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final d:Landroid/widget/EditText;

.field public final e:Z

.field public f:LR/n;

.field public g:Z


# direct methods
.method public constructor <init>(Landroid/widget/EditText;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LR/o;->d:Landroid/widget/EditText;

    const/4 p1, 0x0

    iput-boolean p1, p0, LR/o;->e:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, LR/o;->g:Z

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget-object p2, p0, LR/o;->d:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->isInEditMode()Z

    move-result p2

    if-nez p2, :cond_4

    iget-boolean p2, p0, LR/o;->g:Z

    if-eqz p2, :cond_1

    iget-boolean p0, p0, LR/o;->e:Z

    if-nez p0, :cond_0

    sget-object p0, Landroidx/emoji2/text/b;->a:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    if-gt p3, p4, :cond_4

    instance-of p0, p1, Landroid/text/Spannable;

    if-nez p0, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {}, Landroidx/emoji2/text/b;->a()V

    const/4 p0, 0x0

    throw p0

    :cond_4
    :goto_2
    return-void
.end method
