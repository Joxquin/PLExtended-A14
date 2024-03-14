.class public final LR/a;
.super LR/b;
.source "SourceFile"


# instance fields
.field public final a:Landroid/widget/EditText;

.field public final b:LR/o;


# direct methods
.method public constructor <init>(Landroid/widget/EditText;)V
    .locals 1

    invoke-direct {p0}, LR/b;-><init>()V

    iput-object p1, p0, LR/a;->a:Landroid/widget/EditText;

    new-instance v0, LR/o;

    invoke-direct {v0, p1}, LR/o;-><init>(Landroid/widget/EditText;)V

    iput-object v0, p0, LR/a;->b:LR/o;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    sget-object p0, LR/d;->b:LR/d;

    if-nez p0, :cond_1

    sget-object p0, LR/d;->a:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    sget-object v0, LR/d;->b:LR/d;

    if-nez v0, :cond_0

    new-instance v0, LR/d;

    invoke-direct {v0}, LR/d;-><init>()V

    sput-object v0, LR/d;->b:LR/d;

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    sget-object p0, LR/d;->b:LR/d;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setEditableFactory(Landroid/text/Editable$Factory;)V

    return-void
.end method
