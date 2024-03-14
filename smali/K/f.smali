.class public final LK/f;
.super LK/e;
.source "SourceFile"


# instance fields
.field public final b:Z


# direct methods
.method public constructor <init>(LK/c;Z)V
    .locals 0

    invoke-direct {p0, p1}, LK/e;-><init>(LK/c;)V

    iput-boolean p2, p0, LK/f;->b:Z

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    iget-boolean p0, p0, LK/f;->b:Z

    return p0
.end method
