.class public final LT/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:LT/b;


# instance fields
.field public final a:Ljava/util/Set;

.field public final b:Ljava/util/Map;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, LT/b;

    sget-object v1, Lkotlin/collections/EmptySet;->d:Lkotlin/collections/EmptySet;

    invoke-static {}, Lkotlin/collections/x;->c()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v0, v1, v2}, LT/b;-><init>(Lkotlin/collections/EmptySet;Ljava/util/Map;)V

    sput-object v0, LT/b;->c:LT/b;

    return-void
.end method

.method public constructor <init>(Lkotlin/collections/EmptySet;Ljava/util/Map;)V
    .locals 1

    const-string v0, "flags"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT/b;->a:Ljava/util/Set;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    check-cast p2, Lkotlin/collections/EmptySet;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lkotlin/collections/t;->d:Lkotlin/collections/t;

    iput-object p1, p0, LT/b;->b:Ljava/util/Map;

    return-void
.end method
