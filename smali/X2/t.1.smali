.class public final LX2/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LX2/u;


# static fields
.field public static final a:LX2/t;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, LX2/t;

    invoke-direct {v0}, LX2/t;-><init>()V

    sput-object v0, LX2/t;->a:LX2/t;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    const-string p0, "identity"

    return-object p0
.end method
