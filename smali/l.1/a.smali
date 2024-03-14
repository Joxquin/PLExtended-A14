.class public final Ll/a;
.super Ll/d;
.source "SourceFile"


# static fields
.field public static volatile c:Ll/a;


# instance fields
.field public final a:Ll/c;

.field public final b:Ll/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ll/d;-><init>()V

    new-instance v0, Ll/c;

    invoke-direct {v0}, Ll/c;-><init>()V

    iput-object v0, p0, Ll/a;->b:Ll/c;

    iput-object v0, p0, Ll/a;->a:Ll/c;

    return-void
.end method
