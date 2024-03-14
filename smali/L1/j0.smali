.class public final LL1/j0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "null_session_id"

    iput-object v0, p0, LL1/j0;->a:Ljava/lang/String;

    iput-object p1, p0, LL1/j0;->b:Ljava/lang/String;

    iput-boolean p2, p0, LL1/j0;->c:Z

    return-void
.end method
