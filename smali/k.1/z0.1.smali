.class public final Lk/z0;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lk/C0;


# direct methods
.method public constructor <init>(Lk/C0;)V
    .locals 0

    iput-object p1, p0, Lk/z0;->a:Lk/C0;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 1

    iget-object v0, p0, Lk/z0;->a:Lk/C0;

    invoke-virtual {v0}, Lk/C0;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lk/z0;->a:Lk/C0;

    invoke-virtual {p0}, Lk/C0;->show()V

    :cond_0
    return-void
.end method

.method public final onInvalidated()V
    .locals 0

    iget-object p0, p0, Lk/z0;->a:Lk/C0;

    invoke-virtual {p0}, Lk/C0;->dismiss()V

    return-void
.end method
