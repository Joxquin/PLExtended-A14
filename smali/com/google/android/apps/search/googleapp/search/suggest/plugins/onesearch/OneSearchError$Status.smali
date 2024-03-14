.class public final enum Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchError$Status;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/L;


# static fields
.field public static final enum d:Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchError$Status;

.field public static final enum e:Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchError$Status;

.field public static final enum f:Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchError$Status;

.field public static final enum g:Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchError$Status;

.field public static final synthetic h:[Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchError$Status;


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchError$Status;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchError$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchError$Status;->d:Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchError$Status;

    new-instance v1, Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchError$Status;

    const-string v2, "HTTP_ERROR"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchError$Status;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchError$Status;->e:Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchError$Status;

    new-instance v2, Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchError$Status;

    const-string v3, "NO_NETWORK"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchError$Status;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchError$Status;->f:Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchError$Status;

    new-instance v3, Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchError$Status;

    const-string v4, "TIMEOUT"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchError$Status;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchError$Status;->g:Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchError$Status;

    filled-new-array {v0, v1, v2, v3}, [Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchError$Status;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchError$Status;->h:[Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchError$Status;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchError$Status;->value:I

    return-void
.end method

.method public static a(I)Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchError$Status;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchError$Status;->g:Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchError$Status;

    return-object p0

    :cond_1
    sget-object p0, Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchError$Status;->f:Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchError$Status;

    return-object p0

    :cond_2
    sget-object p0, Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchError$Status;->e:Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchError$Status;

    return-object p0

    :cond_3
    sget-object p0, Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchError$Status;->d:Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchError$Status;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchError$Status;
    .locals 1

    const-class v0, Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchError$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchError$Status;

    return-object p0
.end method

.method public static values()[Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchError$Status;
    .locals 1

    sget-object v0, Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchError$Status;->h:[Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchError$Status;

    invoke-virtual {v0}, [Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchError$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchError$Status;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 0

    iget p0, p0, Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchError$Status;->value:I

    return p0
.end method
