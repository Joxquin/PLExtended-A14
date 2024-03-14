.class public final Lj0/k;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lj0/n;


# direct methods
.method public constructor <init>(Lj0/n;)V
    .locals 0

    iput-object p1, p0, Lj0/k;->a:Lj0/n;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 0

    iget-object p0, p0, Lj0/k;->a:Lj0/n;

    invoke-virtual {p0}, Lj0/n;->e()V

    return-void
.end method

.method public final onInvalidated()V
    .locals 0

    iget-object p0, p0, Lj0/k;->a:Lj0/n;

    invoke-virtual {p0}, Lj0/n;->e()V

    return-void
.end method
