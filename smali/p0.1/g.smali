.class public final Lp0/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lp0/g;


# instance fields
.field public final a:Lq/l;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lp0/g;

    invoke-direct {v0}, Lp0/g;-><init>()V

    sput-object v0, Lp0/g;->b:Lp0/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lq/l;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lq/l;-><init>(I)V

    iput-object v0, p0, Lp0/g;->a:Lq/l;

    return-void
.end method
