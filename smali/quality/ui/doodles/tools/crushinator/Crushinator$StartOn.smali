.class public final enum Lquality/ui/doodles/tools/crushinator/Crushinator$StartOn;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/L;


# static fields
.field public static final enum d:Lquality/ui/doodles/tools/crushinator/Crushinator$StartOn;

.field public static final enum e:Lquality/ui/doodles/tools/crushinator/Crushinator$StartOn;

.field public static final synthetic f:[Lquality/ui/doodles/tools/crushinator/Crushinator$StartOn;


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lquality/ui/doodles/tools/crushinator/Crushinator$StartOn;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lquality/ui/doodles/tools/crushinator/Crushinator$StartOn;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lquality/ui/doodles/tools/crushinator/Crushinator$StartOn;->d:Lquality/ui/doodles/tools/crushinator/Crushinator$StartOn;

    new-instance v1, Lquality/ui/doodles/tools/crushinator/Crushinator$StartOn;

    const-string v2, "HOME"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lquality/ui/doodles/tools/crushinator/Crushinator$StartOn;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lquality/ui/doodles/tools/crushinator/Crushinator$StartOn;->e:Lquality/ui/doodles/tools/crushinator/Crushinator$StartOn;

    filled-new-array {v0, v1}, [Lquality/ui/doodles/tools/crushinator/Crushinator$StartOn;

    move-result-object v0

    sput-object v0, Lquality/ui/doodles/tools/crushinator/Crushinator$StartOn;->f:[Lquality/ui/doodles/tools/crushinator/Crushinator$StartOn;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lquality/ui/doodles/tools/crushinator/Crushinator$StartOn;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lquality/ui/doodles/tools/crushinator/Crushinator$StartOn;
    .locals 1

    const-class v0, Lquality/ui/doodles/tools/crushinator/Crushinator$StartOn;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lquality/ui/doodles/tools/crushinator/Crushinator$StartOn;

    return-object p0
.end method

.method public static values()[Lquality/ui/doodles/tools/crushinator/Crushinator$StartOn;
    .locals 1

    sget-object v0, Lquality/ui/doodles/tools/crushinator/Crushinator$StartOn;->f:[Lquality/ui/doodles/tools/crushinator/Crushinator$StartOn;

    invoke-virtual {v0}, [Lquality/ui/doodles/tools/crushinator/Crushinator$StartOn;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lquality/ui/doodles/tools/crushinator/Crushinator$StartOn;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 0

    iget p0, p0, Lquality/ui/doodles/tools/crushinator/Crushinator$StartOn;->value:I

    return p0
.end method
