.class public final LR/l;
.super LR/k;
.source "SourceFile"


# instance fields
.field public final a:LR/j;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    invoke-direct {p0}, LR/k;-><init>()V

    new-instance v0, LR/j;

    invoke-direct {v0, p1}, LR/j;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, LR/l;->a:LR/j;

    return-void
.end method


# virtual methods
.method public final a([Landroid/text/InputFilter;)[Landroid/text/InputFilter;
    .locals 0

    sget-object p0, Landroidx/emoji2/text/b;->a:Ljava/lang/Object;

    return-object p1
.end method

.method public final b()Z
    .locals 0

    iget-object p0, p0, LR/l;->a:LR/j;

    iget-boolean p0, p0, LR/j;->c:Z

    return p0
.end method

.method public final c(Z)V
    .locals 0

    sget-object p0, Landroidx/emoji2/text/b;->a:Ljava/lang/Object;

    return-void
.end method

.method public final d(Z)V
    .locals 1

    sget-object v0, Landroidx/emoji2/text/b;->a:Ljava/lang/Object;

    iget-object p0, p0, LR/l;->a:LR/j;

    iput-boolean p1, p0, LR/j;->c:Z

    return-void
.end method

.method public final e(Landroid/text/method/TransformationMethod;)Landroid/text/method/TransformationMethod;
    .locals 0

    sget-object p0, Landroidx/emoji2/text/b;->a:Ljava/lang/Object;

    return-object p1
.end method
