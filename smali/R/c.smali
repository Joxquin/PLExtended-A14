.class public final LR/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LR/a;


# direct methods
.method public constructor <init>(Landroid/widget/EditText;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "editText cannot be null"

    invoke-static {p1, v0}, LL/f;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, LR/a;

    invoke-direct {v0, p1}, LR/a;-><init>(Landroid/widget/EditText;)V

    iput-object v0, p0, LR/c;->a:LR/a;

    return-void
.end method
