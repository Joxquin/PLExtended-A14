.class public final Lkotlin/sequences/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/sequences/g;


# instance fields
.field public final a:Lm3/a;

.field public final b:Lm3/l;


# direct methods
.method public constructor <init>(Lm3/a;Lm3/l;)V
    .locals 1

    const-string v0, "getNextValue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/sequences/f;->a:Lm3/a;

    iput-object p2, p0, Lkotlin/sequences/f;->b:Lm3/l;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lkotlin/sequences/e;

    invoke-direct {v0, p0}, Lkotlin/sequences/e;-><init>(Lkotlin/sequences/f;)V

    return-object v0
.end method
