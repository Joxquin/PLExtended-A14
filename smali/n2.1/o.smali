.class public final Ln2/o;
.super Ln2/f;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ln2/q;


# direct methods
.method public constructor <init>(Ln2/q;)V
    .locals 0

    iput-object p1, p0, Ln2/o;->a:Ln2/q;

    invoke-direct {p0}, Ln2/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final c(Landroid/view/View;I)V
    .locals 0

    const/4 p1, 0x5

    if-ne p2, p1, :cond_0

    iget-object p0, p0, Ln2/o;->a:Ln2/q;

    invoke-virtual {p0}, Ln2/q;->cancel()V

    :cond_0
    return-void
.end method
