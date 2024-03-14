.class final Lkotlin/random/Random$Default$Serialized;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final d:Lkotlin/random/Random$Default$Serialized;

.field private static final serialVersionUID:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/random/Random$Default$Serialized;

    invoke-direct {v0}, Lkotlin/random/Random$Default$Serialized;-><init>()V

    sput-object v0, Lkotlin/random/Random$Default$Serialized;->d:Lkotlin/random/Random$Default$Serialized;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final readResolve()Ljava/lang/Object;
    .locals 0

    sget-object p0, Lo3/d;->d:Lkotlin/random/Random$Default;

    return-object p0
.end method
