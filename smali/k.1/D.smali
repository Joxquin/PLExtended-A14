.class public final Lk/D;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/widget/EditText;

.field public final b:LR/c;


# direct methods
.method public constructor <init>(Landroid/widget/EditText;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk/D;->a:Landroid/widget/EditText;

    new-instance v0, LR/c;

    invoke-direct {v0, p1}, LR/c;-><init>(Landroid/widget/EditText;)V

    iput-object v0, p0, Lk/D;->b:LR/c;

    return-void
.end method


# virtual methods
.method public final a(Landroid/text/method/KeyListener;)Landroid/text/method/KeyListener;
    .locals 1

    instance-of v0, p1, Landroid/text/method/NumberKeyListener;

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    iget-object p0, p0, Lk/D;->b:LR/c;

    iget-object p0, p0, LR/c;->a:LR/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, LR/i;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    instance-of p0, p1, Landroid/text/method/NumberKeyListener;

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, LR/i;

    invoke-direct {p0, p1}, LR/i;-><init>(Landroid/text/method/KeyListener;)V

    move-object p1, p0

    :cond_3
    :goto_0
    return-object p1
.end method

.method public final b(Landroid/util/AttributeSet;I)V
    .locals 3

    iget-object v0, p0, Lk/D;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Ld/a;->i:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 p2, 0xe

    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    iget-object p0, p0, Lk/D;->b:LR/c;

    iget-object p0, p0, LR/c;->a:LR/a;

    iget-object p0, p0, LR/a;->b:LR/o;

    iget-boolean p1, p0, LR/o;->g:Z

    if-eq p1, v1, :cond_3

    iget-object p1, p0, LR/o;->f:LR/n;

    const/4 p2, 0x0

    if-nez p1, :cond_2

    iput-boolean v1, p0, LR/o;->g:Z

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Landroidx/emoji2/text/b;->a()V

    throw p2

    :cond_2
    invoke-static {}, Landroidx/emoji2/text/b;->a()V

    throw p2

    :cond_3
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
.end method

.method public final c(Landroid/view/inputmethod/InputConnection;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    iget-object p0, p0, Lk/D;->b:LR/c;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    iget-object p0, p0, LR/c;->a:LR/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, LR/f;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, LR/f;

    iget-object p0, p0, LR/a;->a:Landroid/widget/EditText;

    invoke-direct {v0, p0, p1}, LR/f;-><init>(Landroid/widget/TextView;Landroid/view/inputmethod/InputConnection;)V

    move-object p1, v0

    :goto_0
    move-object p0, p1

    :goto_1
    return-object p0
.end method
