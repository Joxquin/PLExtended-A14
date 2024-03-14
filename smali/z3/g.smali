.class public final Lz3/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/M;


# static fields
.field public static final a:Lz3/g;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lz3/g;

    invoke-direct {v0}, Lz3/g;-><init>()V

    sput-object v0, Lz3/g;->a:Lz3/g;

    return-void
.end method


# virtual methods
.method public final isInRange(I)Z
    .locals 0

    const/4 p0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, p0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    sget-object p1, Lquality/ui/doodles/tools/crushinator/Crushinator$StartOn;->e:Lquality/ui/doodles/tools/crushinator/Crushinator$StartOn;

    goto :goto_0

    :cond_1
    sget-object p1, Lquality/ui/doodles/tools/crushinator/Crushinator$StartOn;->d:Lquality/ui/doodles/tools/crushinator/Crushinator$StartOn;

    :goto_0
    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method
