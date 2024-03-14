.class public final Lc3/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lc3/d;

.field public static final b:Lc3/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc3/d;

    invoke-direct {v0}, Lc3/d;-><init>()V

    sput-object v0, Lc3/a;->a:Lc3/d;

    new-instance v0, Lc3/b;

    invoke-direct {v0}, Lc3/b;-><init>()V

    sput-object v0, Lc3/a;->b:Lc3/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
