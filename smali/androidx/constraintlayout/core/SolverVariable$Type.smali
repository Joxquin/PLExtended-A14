.class public final enum Landroidx/constraintlayout/core/SolverVariable$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum d:Landroidx/constraintlayout/core/SolverVariable$Type;

.field public static final enum e:Landroidx/constraintlayout/core/SolverVariable$Type;

.field public static final enum f:Landroidx/constraintlayout/core/SolverVariable$Type;

.field public static final enum g:Landroidx/constraintlayout/core/SolverVariable$Type;

.field public static final synthetic h:[Landroidx/constraintlayout/core/SolverVariable$Type;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Landroidx/constraintlayout/core/SolverVariable$Type;

    const-string v1, "UNRESTRICTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/core/SolverVariable$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/core/SolverVariable$Type;->d:Landroidx/constraintlayout/core/SolverVariable$Type;

    new-instance v1, Landroidx/constraintlayout/core/SolverVariable$Type;

    const-string v2, "CONSTANT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroidx/constraintlayout/core/SolverVariable$Type;-><init>(Ljava/lang/String;I)V

    new-instance v2, Landroidx/constraintlayout/core/SolverVariable$Type;

    const-string v3, "SLACK"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Landroidx/constraintlayout/core/SolverVariable$Type;-><init>(Ljava/lang/String;I)V

    sput-object v2, Landroidx/constraintlayout/core/SolverVariable$Type;->e:Landroidx/constraintlayout/core/SolverVariable$Type;

    new-instance v3, Landroidx/constraintlayout/core/SolverVariable$Type;

    const-string v4, "ERROR"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Landroidx/constraintlayout/core/SolverVariable$Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroidx/constraintlayout/core/SolverVariable$Type;->f:Landroidx/constraintlayout/core/SolverVariable$Type;

    new-instance v4, Landroidx/constraintlayout/core/SolverVariable$Type;

    const-string v5, "UNKNOWN"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Landroidx/constraintlayout/core/SolverVariable$Type;-><init>(Ljava/lang/String;I)V

    sput-object v4, Landroidx/constraintlayout/core/SolverVariable$Type;->g:Landroidx/constraintlayout/core/SolverVariable$Type;

    filled-new-array {v0, v1, v2, v3, v4}, [Landroidx/constraintlayout/core/SolverVariable$Type;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/SolverVariable$Type;->h:[Landroidx/constraintlayout/core/SolverVariable$Type;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/constraintlayout/core/SolverVariable$Type;
    .locals 1

    const-class v0, Landroidx/constraintlayout/core/SolverVariable$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/core/SolverVariable$Type;

    return-object p0
.end method

.method public static values()[Landroidx/constraintlayout/core/SolverVariable$Type;
    .locals 1

    sget-object v0, Landroidx/constraintlayout/core/SolverVariable$Type;->h:[Landroidx/constraintlayout/core/SolverVariable$Type;

    invoke-virtual {v0}, [Landroidx/constraintlayout/core/SolverVariable$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/core/SolverVariable$Type;

    return-object v0
.end method
