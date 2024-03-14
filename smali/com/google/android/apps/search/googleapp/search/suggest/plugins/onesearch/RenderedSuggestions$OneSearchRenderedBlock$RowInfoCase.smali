.class public final enum Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/RenderedSuggestions$OneSearchRenderedBlock$RowInfoCase;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum d:Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/RenderedSuggestions$OneSearchRenderedBlock$RowInfoCase;

.field public static final enum e:Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/RenderedSuggestions$OneSearchRenderedBlock$RowInfoCase;

.field public static final enum f:Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/RenderedSuggestions$OneSearchRenderedBlock$RowInfoCase;

.field public static final synthetic g:[Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/RenderedSuggestions$OneSearchRenderedBlock$RowInfoCase;


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/RenderedSuggestions$OneSearchRenderedBlock$RowInfoCase;

    const-string v1, "GOOGLE_BLOCK"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/RenderedSuggestions$OneSearchRenderedBlock$RowInfoCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/RenderedSuggestions$OneSearchRenderedBlock$RowInfoCase;->d:Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/RenderedSuggestions$OneSearchRenderedBlock$RowInfoCase;

    new-instance v1, Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/RenderedSuggestions$OneSearchRenderedBlock$RowInfoCase;

    const-string v4, "ON_DEVICE_BLOCK"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/RenderedSuggestions$OneSearchRenderedBlock$RowInfoCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/RenderedSuggestions$OneSearchRenderedBlock$RowInfoCase;->e:Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/RenderedSuggestions$OneSearchRenderedBlock$RowInfoCase;

    new-instance v3, Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/RenderedSuggestions$OneSearchRenderedBlock$RowInfoCase;

    const-string v4, "ROWINFO_NOT_SET"

    invoke-direct {v3, v4, v5, v2}, Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/RenderedSuggestions$OneSearchRenderedBlock$RowInfoCase;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/RenderedSuggestions$OneSearchRenderedBlock$RowInfoCase;->f:Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/RenderedSuggestions$OneSearchRenderedBlock$RowInfoCase;

    filled-new-array {v0, v1, v3}, [Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/RenderedSuggestions$OneSearchRenderedBlock$RowInfoCase;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/RenderedSuggestions$OneSearchRenderedBlock$RowInfoCase;->g:[Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/RenderedSuggestions$OneSearchRenderedBlock$RowInfoCase;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/RenderedSuggestions$OneSearchRenderedBlock$RowInfoCase;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/RenderedSuggestions$OneSearchRenderedBlock$RowInfoCase;
    .locals 1

    const-class v0, Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/RenderedSuggestions$OneSearchRenderedBlock$RowInfoCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/RenderedSuggestions$OneSearchRenderedBlock$RowInfoCase;

    return-object p0
.end method

.method public static values()[Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/RenderedSuggestions$OneSearchRenderedBlock$RowInfoCase;
    .locals 1

    sget-object v0, Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/RenderedSuggestions$OneSearchRenderedBlock$RowInfoCase;->g:[Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/RenderedSuggestions$OneSearchRenderedBlock$RowInfoCase;

    invoke-virtual {v0}, [Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/RenderedSuggestions$OneSearchRenderedBlock$RowInfoCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/RenderedSuggestions$OneSearchRenderedBlock$RowInfoCase;

    return-object v0
.end method
