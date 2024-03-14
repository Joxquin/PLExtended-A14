.class public final LR/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LR/k;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "textView cannot be null"

    invoke-static {p1, v0}, LL/f;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, LR/l;

    invoke-direct {v0, p1}, LR/l;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, LR/m;->a:LR/k;

    return-void
.end method
