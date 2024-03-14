.class final enum Landroidx/slice/core/SliceActionImpl$ActionType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum d:Landroidx/slice/core/SliceActionImpl$ActionType;

.field public static final enum e:Landroidx/slice/core/SliceActionImpl$ActionType;

.field public static final enum f:Landroidx/slice/core/SliceActionImpl$ActionType;

.field public static final enum g:Landroidx/slice/core/SliceActionImpl$ActionType;

.field public static final synthetic h:[Landroidx/slice/core/SliceActionImpl$ActionType;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Landroidx/slice/core/SliceActionImpl$ActionType;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/slice/core/SliceActionImpl$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/slice/core/SliceActionImpl$ActionType;->d:Landroidx/slice/core/SliceActionImpl$ActionType;

    new-instance v1, Landroidx/slice/core/SliceActionImpl$ActionType;

    const-string v2, "TOGGLE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroidx/slice/core/SliceActionImpl$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/slice/core/SliceActionImpl$ActionType;->e:Landroidx/slice/core/SliceActionImpl$ActionType;

    new-instance v2, Landroidx/slice/core/SliceActionImpl$ActionType;

    const-string v3, "DATE_PICKER"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Landroidx/slice/core/SliceActionImpl$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Landroidx/slice/core/SliceActionImpl$ActionType;->f:Landroidx/slice/core/SliceActionImpl$ActionType;

    new-instance v3, Landroidx/slice/core/SliceActionImpl$ActionType;

    const-string v4, "TIME_PICKER"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Landroidx/slice/core/SliceActionImpl$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroidx/slice/core/SliceActionImpl$ActionType;->g:Landroidx/slice/core/SliceActionImpl$ActionType;

    filled-new-array {v0, v1, v2, v3}, [Landroidx/slice/core/SliceActionImpl$ActionType;

    move-result-object v0

    sput-object v0, Landroidx/slice/core/SliceActionImpl$ActionType;->h:[Landroidx/slice/core/SliceActionImpl$ActionType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/slice/core/SliceActionImpl$ActionType;
    .locals 1

    const-class v0, Landroidx/slice/core/SliceActionImpl$ActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/slice/core/SliceActionImpl$ActionType;

    return-object p0
.end method

.method public static values()[Landroidx/slice/core/SliceActionImpl$ActionType;
    .locals 1

    sget-object v0, Landroidx/slice/core/SliceActionImpl$ActionType;->h:[Landroidx/slice/core/SliceActionImpl$ActionType;

    invoke-virtual {v0}, [Landroidx/slice/core/SliceActionImpl$ActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/slice/core/SliceActionImpl$ActionType;

    return-object v0
.end method
